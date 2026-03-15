<?php

namespace App\Services;

use App\DTOs\ConsultationSubCategoryDTO;
use App\Repositories\ConsultationSubCategoriesRepository;

class ConsultationSubCategoryService
{
    protected $repository;

    public function __construct(ConsultationSubCategoriesRepository $repository)
    {
        $this->repository = $repository;
    }

    public function index($perPage = 10, $search = null, $categoryId = null, $loads = [])
    {
        return $this->repository->paginate($perPage, $search, $categoryId, $loads);
    }

    public function create(ConsultationSubCategoryDTO $dto)
    {
        return $this->repository->create($dto->toArray());
    }

    public function findById($id, $loads = [])
    {
        return $this->repository->findById($id, $loads);
    }

    public function update($id, ConsultationSubCategoryDTO $dto)
    {
        return $this->repository->update($id, $dto->toArray());
    }

    public function delete($id)
    {
        return $this->repository->delete($id);
    }
}
