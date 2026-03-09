<?php

namespace App\Services;

use App\Models\User;
use App\Repositories\Contracts\UserRolePermissionRepositoryInterface;

class UserRolePermissionService
{
    protected UserRolePermissionRepositoryInterface $repository;

    public function __construct(UserRolePermissionRepositoryInterface $repository)
    {
        $this->repository = $repository;
    }

    public function getUserAccess(User $user): array
    {
        return [
            'roles' => $this->repository->getUserRoles($user),
            'permissions' => $this->repository->getUserPermissions($user),
        ];
    }

    public function assignRoles(User $user, array $roles)
    {
        // Optional: validate roles exist
        $this->repository->assignRole($user, $roles);
    }

    public function removeRoles(User $user, array $roles)
    {
        $this->repository->removeRole($user, $roles);
    }

    public function assignPermissions(User $user, array $permissions)
    {
        $this->repository->assignDirectPermission($user, $permissions);
    }

    public function removePermissions(User $user, array $permissions)
    {
        $this->repository->removeDirectPermission($user, $permissions);
    }

    public function syncRoles(User $user, array $roles)
    {
        $this->repository->syncRoles($user, $roles);
    }
}
