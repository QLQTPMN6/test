<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Product;
use Faker\Generator as Faker;

$factory->define(Product::class, function (Faker $faker) {
    return [
        'name' => $faker->productName,
        'quantity' => $faker->randomNumber(),
        'price' => $faker->randomFloat(),
        'variant' => $faker->text(5),
        'deleted_flg' => 0,
    ];
});
