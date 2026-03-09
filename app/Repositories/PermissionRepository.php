<?php

namespace App\Repositories;

use App\Repositories\Contracts\PermissionRepositoryInterface;
use Spatie\Permission\Models\Permission;

class PermissionRepository implements PermissionRepositoryInterface
{
    protected Permission $model;

    public function __construct(Permission $model)
    {
        $this->model = $model;
    }

    public function getAll(): \Illuminate\Database\Eloquent\Collection
    {
        return $this->model->all();
    }

    public function findById(int $id): ?Permission
    {
        return $this->model->find($id);
    }

    public function findByName(string $name): ?Permission
    {
        return $this->model->where('name', $name)->first();
    }

    public function create(array $data): Permission
    {
        return $this->model->create($data);
    }

    public function update(Permission $role, array $data): bool
    {
        return $role->update($data);
    }

    public function delete(Permission $role): bool
    {
        return $role->delete();
    }
}
