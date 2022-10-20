<?php

namespace Database\Seeders;

use App\Models\Domain;
use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $users = [
            [
                'name' => 'Admin',
                'email' => 'admin@a.a',
                'admin_active' => 1,
                'password' => Hash::make('adminadmin')
            ],
        ];

        foreach ($users as $user) {
            User::create($user);
        }
    }
}
