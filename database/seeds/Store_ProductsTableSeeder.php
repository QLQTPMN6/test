<?php

use Illuminate\Database\Seeder;

class Store_ProductsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(App\Store_Product::class,20)->create();
    }
}
