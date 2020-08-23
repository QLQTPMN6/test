<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\User_Store;
use Faker\Generator as Faker;

$factory->define(User_Store::class, function (Faker $faker) {
	$users = App\User::pluck('id')->toArray();
	$stores = App\Store::pluck('id')->toArray();
    return [
        'user_id' => $faker->randomElement($users),
        'store_id' => $faker->randomElement($stores),
    ];
});
