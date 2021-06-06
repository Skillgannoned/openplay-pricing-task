# Approach

## PricingCalculator.php
**Files :**
- *app/PricingCalculator.php*

**About :**

I decided to put all functionality into *PricingCalculator.php* and to make it executable via tests. 

```__construct(ProductModel $product, MemberModel $member,  VenueModel $venue)```

You can see results by typing `php artisan test` in command line. Alternatively you could use Tinker or something like Tinkerwell to run the class and get results. It returns an associative array with the PricingModifier ID as the key and the adjusted price as the value, orded ascending by the value. It is important to note that the tests use the real database currently, I didn't want to force you into making more databases but ideally there'd be a test database so as to not overrite the main one.

# Testing

**Files :**
- *database/seeders/TestDatabaseSeeder.php*
- *database/test/test_data_2021_06_06.sql* 
- *tests/Unit/PricingCalculatorTest.php*

**About :**

I added 4 tests. 1 Unit Test to make sure Test Seeder runs and 3 Unit tests to cover the given scenarios in README.md

- If the customer is under 25, reduce the base price by 20%.
- If the venue is ‘Glasgow’ the price of the product is £3.
- If the customer has a membership type of ‘platinum’ the product is free (£0).

To test for these I needed data so after running the seeder initially I exported the sql database and made some small adjustments to allow for a testability. Given more time I'd clean up and reduce this data a lot more to make it easier for anyone else looking at it. I've left some commented `dump()`'s in each test to display what the return looks like if you want to see.

# Thoughts on my Approach

- I generally put files like this into a `app/Helpers` directory but left as is for this.
- Make a test database.
- Making the class have static calls, it's certainly viable.
- Making test version of the seeders or reducing size of sql import.
- Log and deal with occurences of things like:
    - Negative multiplier values.
    - Null results for pricingOption or currentPricingModifiers.
- I wasted time trying to get the tests working with the existing seeder.