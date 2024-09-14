<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the seeder.
     *
     * @return void
     */
    public function run()
    {
        DB::table('users')->insert([
            [
                'id' => 1,
                'name' => 'admin',
                'email' => 'maher.saqib64@gmail.com',
                'password' => '$2y$10$BydkqMUJhQ3RyE7AX/ZJru8.s8eqI0NN1YaWb5cL.GOZgPBKL68VK',
                'created_at' => '2023-07-11 09:17:57',
                'updated_at' => '2023-07-11 09:17:57',
            ],
        ]);

       
    }
}
