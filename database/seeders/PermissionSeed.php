<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class PermissionSeed extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('permissions')->insert([
            [
                'id' => 1,
                'name' => 'organizations',
                'guard_name' => 'web',
            ],
            [
                'id' => 2,
                'name' => 'categories',
                'guard_name' => 'web',
            ],
            [
                'id' => 3,
                'name' => 'admin',
                'guard_name' => 'web',
            ],
            [
                'id' => 4,
                'name' => 'user',
                'guard_name' => 'web',
            ],
        ]);
    }
}
