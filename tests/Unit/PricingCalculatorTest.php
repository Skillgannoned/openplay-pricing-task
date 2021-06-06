<?php

namespace Tests\Unit;

use Tests\TestCase;
use App\Models\VenueModel;
use App\PricingCalculator;
use App\Models\MemberModel;
use App\Models\ProductModel;
use Database\Seeders\TestDatabaseSeeder;
class PricingCalculatorTest extends TestCase
{

    /**
     * Seed with TestData
     * 
     * @return void 
     */
    public function setUp(): void
    {
        parent::setUp();

        $this->seed(TestDatabaseSeeder::class);
    }

    /**
     * Test the Seeder worked
     *
     * @return void
     */
    public function test_database_seeder_ran_correctly()
    {
        $this->assertDatabaseCount('members', 5);
        $this->assertDatabaseCount('venues', 20);
    }

    
    /**
     * If the member is under 25, reduce the base price by 20%.
     * 
     * @return void
     */
    public function test_member_under_25_discount_applied()
    {
        $product = ProductModel::find(14);
        $member = MemberModel::find(5);
        $venue = VenueModel::find(10);

        $pc = new PricingCalculator($product, $member, $venue);
        $result = $pc->run();

        $this->assertEquals($result[1], $product->pricingOption->price*0.8);
    
        // dump([
        //     __FUNCTION__,
        //     $result
        // ]);
    }

    /**
     * If the venue is ‘Glasgow’ the price of the product is £3.
     *
     * @return void
     */
    public function test_venue_is_glasgow_discount_applied()
    {
        $product = ProductModel::find(14);
        $member = MemberModel::find(5);
        $venue = VenueModel::find(10);

        $pc = new PricingCalculator($product, $member, $venue);
        $result = $pc->run();

        $this->assertEquals($result[24], 3);

        // dump([
        //     __FUNCTION__,
        //     $result
        // ]);
    }

    /**
     * If the member has a membership type of ‘platinum’ the product is free (£0).
     *
     * @return void
     */
    public function test_member_is_platinum_discount_applied()
    {
        $product = ProductModel::find(14);
        $member = MemberModel::find(5);
        $venue = VenueModel::find(10);

        $pc = new PricingCalculator($product, $member, $venue);
        $result = $pc->run();

        $this->assertEquals($result[20], 0);
        
        // dump([
        //     __FUNCTION__,
        //     $result
        // ]);
    }
}
