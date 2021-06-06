<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class TestDatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
       $sql = file_get_contents(database_path('/testing/test_data_2021_06_06.sql'));
       DB::unprepared($sql);
    }
}
