<?php

namespace App\Repositories\Contracts;

use App\Models\User;
use Illuminate\Support\Collection;

interface UserRolePermissionRepositoryInterface
{
    public function getUserRoles(User $user): Collection;
    public function getUserPermissions(User $user): Collection;
    public function assignRole(User $user, string|array $roles): void;
    public function removeRole(User $user, string|array $roles): void;
    public function assignDirectPermission(User $user, string|array $permissions): void;
    public function removeDirectPermission(User $user, string|array $permissions): void;
    public function syncRoles(User $user, array $roles): void;
}
