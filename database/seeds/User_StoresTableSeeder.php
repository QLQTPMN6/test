<?php

use Illuminate\Database\Seeder;

class User_StoresTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(App\User_Store::class,20)->create();
    }
}
