<?php

namespace App;

use App\Models\MemberModel;
use App\Models\ProductModel;
use App\Models\VenueModel;
use Exception;

/**
 * Class PricingCalculator
 * 
 * @property ProductModel   $product 
 * @property VenueModel     $venue 
 * @property MemberModel    $member 
 * @property PricingOptionModel     $pricingOption 
 * @property PricingModifierModel[] $currentPricingModifiers 
 * @package App
 */
class PricingCalculator
{

    protected $product;
    protected $venue;
    protected $member;
    protected $pricingOption;
    protected $currentPricingModifiers;

    /**
     * Todo : Could add some error catching/logging here in case some models dont exist
     * 
     * @param ProductModel $product 
     * @param MemberModel $member 
     * @param VenueModel $venue 
     * @return void 
     */
    public function __construct(ProductModel $product, MemberModel $member,  VenueModel $venue)
    {
        $this->product = $product;
        $this->venue = $venue;
        $this->member = $member;
        
        $this->pricingOption = $this->product->pricingOption;
        $this->currentPricingModifiers = $this->pricingOption->currentPricingModifiers;
    }

    /**
     * 
     * @return void 
     */
    public function run()
    {
        $comparePrices = [];

        foreach($this->currentPricingModifiers as $currentPM) {
            $settings = $currentPM->settings;

            switch ($currentPM->type) {
                case 'basic_adjustment':
                case 'basic_multiplier':
                case 'basic_override':
                    $comparePrices[$currentPM->id] = $this->applyAdjustment($settings);
                    break;
                case 'member_age_multiplier':
                    if ($this->checkMemberAge($settings['age_range']['from'], $settings['age_range']['to']))
                        $comparePrices[$currentPM->id] = $this->applyAdjustment($settings);
                    break;
                case 'membership_type_flat_adjustment':
                    if (in_array($this->member->membership_type, $settings['membership_types']))
                        $comparePrices[$currentPM->id] = $this->applyAdjustment($settings);
                    break;
                case 'venue_override':
                    if(in_array($this->venue->location, $settings['venue_locations']))
                        $comparePrices[$currentPM->id] = $this->applyAdjustment($settings);
                    break;
                default:
                    throw new Exception('Unrecognized Type: => '.json_encode($currentPM));
            }

        }

        asort($comparePrices);
        return $comparePrices;
    }

    /**
     * Adjust the price by a given value.
     * 
     * @param mixed $settings   // {"adjustment": 50} || {"adjustment": -15}
     * @return int              // 0 if adjustment re ces price below 0 
     */
    private function applyBasicAdjustment($settings)
    {
        $result = $this->pricingOption->price + $settings['adjustment'];
        return $result > 0 ? $result : 0;
    }


    /**
     * If the multiplier is negative then return the normal price
     * This could be edited to throw an error but would be best to change DB to unsigned
     * 
     * @param mixed $settings   // {"multiplier": 2} || {"multiplier": 0.5}
     * @return int              // 0 if adjustment reduces price below 0 (off chance off bad data i.e. '{"multiplier": -1}')
     */
    private function applyBasicMultiplier($settings)
    {
        $result = $this->pricingOption->price * $settings['multiplier'];
        return  $result > 0 ? $result : $this->pricingOption->price;
    }


    /**
     * Override the price
     * 
     * @param mixed $settings   // {"price": 2}
     * @return int
     */
    private function applyBasicOverride($settings)
    {
        return $settings['price'];
    }


    /**
     * Given a range check the members age is within
     * 
     * @param mixed $from 
     * @param mixed $to 
     * @return bool 
     */
    private function checkMemberAge($from, $to)
    {
        $memberAge = $this->member->getDateOfBirth()->age;

        return ($from <= $memberAge) && ($memberAge <= $to);
    }
    
    /**
     * For the layered 
     * 
     * @param   mixed $settings   // {"price": 3, "venue_locations": ["Glasgow"]}
     * @return  mixed 
     * @throws  Exception         // IF no recognized modifier appears, probably better to log this and ignore the PM in comparison
     */
    private function applyAdjustment($settings)
    {        
        switch (true) {
            case array_key_exists('price', $settings) :
                return $this->applyBasicOverride($settings);
            case array_key_exists('adjustment', $settings) :
                return $this->applyBasicAdjustment($settings);
            case array_key_exists('multiplier', $settings) :
                return $this->applyBasicMultiplier($settings);
            default:
                throw new Exception('Unrecognized Adjustment: => '.json_encode($settings));
        }
    }

}
