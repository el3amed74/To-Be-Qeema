<?php

namespace App\Repositories\Contracts;

use Illuminate\Support\Collection;
use Spatie\Permission\Models\Permission;

interface PermissionRepositoryInterface
{
    public function getAll(): Collection;
    public function findById(int $id): ?Permission;
    public function findByName(string $name): ?Permission;
    public function create(array $data): Permission;
    public function update(Permission $role, array $data): bool;
    public function delete(Permission $role): bool;
}
