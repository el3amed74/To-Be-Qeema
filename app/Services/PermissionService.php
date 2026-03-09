<?php

namespace App\Services;

use App\Repositories\Contracts\PermissionRepositoryInterface;
use Illuminate\Validation\ValidationException;

class PermissionService
{
    protected PermissionRepositoryInterface $repository;

    public function __construct(PermissionRepositoryInterface $repository)
    {
        $this->repository = $repository;
    }

    public function getAll()
    {
        return $this->repository->getAll();
    }

    public function create(array $data)
    {
        // You can add extra business rules here
        if ($this->repository->findByName($data['name'])) {
            throw ValidationException::withMessages(['name' => 'Permission already exists']);
        }

        return $this->repository->create($data);
    }

    public function update(int $id, array $data)
    {
        $role = $this->repository->findById($id);
        if (! $role) {
            throw new \Exception('Permission not found', 404);
        }

        $this->repository->update($role, $data);

        return $role->fresh();
    }

    public function delete(int $id)
    {
        $role = $this->repository->findById($id);
        if (! $role) {
            throw new \Exception('Permission not found', 404);
        }

        return $this->repository->delete($role);
    }
}
