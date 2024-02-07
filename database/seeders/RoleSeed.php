<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class RoleSeed extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('roles')->insert([
            [
                'id' => 1,
                'name' => 'User',
                'guard_name' => 'web',
            ],
            [
                'id' => 2,
                'name' => 'Admin',
                'guard_name' => 'web',
            ],
            [
                'id' => 3,
                'name' => 'Super Admin',
                'guard_name' => 'web',
            ],

        ]);
    }
}
