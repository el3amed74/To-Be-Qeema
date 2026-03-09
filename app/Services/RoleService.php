<?php

namespace App\Services;

use App\Repositories\Contracts\RoleRepositoryInterface;
use Illuminate\Validation\ValidationException;

class RoleService
{
    protected RoleRepositoryInterface $repository;

    public function __construct(RoleRepositoryInterface $repository)
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
            throw ValidationException::withMessages(['name' => 'Role already exists']);
        }

        return $this->repository->create($data);
    }

    public function update(int $id, array $data)
    {
        $role = $this->repository->findById($id);
        if (! $role) {
            throw new \Exception('Role not found', 404);
        }

        $this->repository->update($role, $data);

        return $role->fresh();
    }

    public function delete(int $id)
    {
        $role = $this->repository->findById($id);
        if (! $role) {
            throw new \Exception('Role not found', 404);
        }

        return $this->repository->delete($role);
    }
}
