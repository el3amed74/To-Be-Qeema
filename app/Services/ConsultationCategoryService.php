<?php

namespace App\Services;

use App\DTOs\ConsultationCategoryDTO;
use App\Repositories\ConsultationCategoriesRepository;

class ConsultationCategoryService
{
    protected $repository;

    public function __construct(ConsultationCategoriesRepository $repository)
    {
        $this->repository = $repository;
    }

    public function index($perPage = 10, $search = null, $loads = [])
    {
        return $this->repository->paginate($perPage, $search, $loads);
    }

    public function create(ConsultationCategoryDTO $dto)
    {
        return $this->repository->create($dto->toArray());
    }

    public function findById($id, $loads = [])
    {
        return $this->repository->findById($id, $loads);
    }

    public function update($id, ConsultationCategoryDTO $dto)
    {
        return $this->repository->update($id, $dto->toArray());
    }

    public function delete($id)
    {
        return $this->repository->delete($id);
    }
}
