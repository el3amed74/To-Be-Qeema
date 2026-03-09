<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;

class PermissionsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $modules = [
            'categories',
            'levels',
            'faqs',
            'mentors',
            'banners',
            'courses',
            'lessons',
            'articles',
            'roles',
            'permissions',
            'users',
            'dashboard',
            'settings',
            'reports'
        ];

        $actions = ['view', 'create', 'update', 'delete'];

        // Seed permissions
        foreach ($modules as $module) {
            // Module-level permission (e.g. for menu access or full route groups)
            Permission::firstOrCreate(['name' => $module]);

            // Granular CRUD permissions
            foreach ($actions as $action) {
                Permission::firstOrCreate(['name' => $action . '_' . $module]);
            }
        }

        // Assign all permissions to super-admin
        $superAdmin = Role::firstOrCreate(['name' => 'super-admin']);

        // Get all permissions using the default guard
        $allPermissions = Permission::all();

        $superAdmin->givePermissionTo($allPermissions);
    }
}
