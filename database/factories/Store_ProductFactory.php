<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Store_Product;
use Faker\Generator as Faker;

$factory->define(Store_Product::class, function (Faker $faker) {
    $products = App\Product::pluck('id')->toArray();
	$stores = App\Store::pluck('id')->toArray();
    return [
        'store_id' => $faker->randomElement($stores),
        'product_id' => $faker->randomElement($products),
    ];
});
