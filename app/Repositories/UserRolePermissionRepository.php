<?php

namespace App\Repositories;

use App\Models\User;
use App\Repositories\Contracts\UserRolePermissionRepositoryInterface;
use Illuminate\Support\Collection;

class UserRolePermissionRepository implements UserRolePermissionRepositoryInterface
{
    public function getUserRoles(User $user): Collection
    {
        return $user->getRoleNames();
    }

    public function getUserPermissions(User $user): Collection
    {
        return $user->getAllPermissions()->pluck('name');
    }

    public function assignRole(User $user, string|array $roles): void
    {
        $user->assignRole($roles);
    }

    public function removeRole(User $user, string|array $roles): void
    {
        $user->removeRole($roles);
    }

    public function assignDirectPermission(User $user, string|array $permissions): void
    {
        $user->givePermissionTo($permissions);
    }

    public function removeDirectPermission(User $user, string|array $permissions): void
    {
        $user->revokePermissionTo($permissions);
    }

    public function syncRoles(User $user, array $roles): void
    {
        $user->syncRoles($roles);
    }
}
