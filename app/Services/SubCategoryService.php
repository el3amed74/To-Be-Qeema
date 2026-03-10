<?php

namespace App\Services;

use App\DTOs\SubCategoryDTO;
use App\Http\Resources\SubCategoryResource;
use App\Repositories\SubCategoriesRepository;

class SubCategoryService
{
    protected $subCategoriesRepository;

    public function __construct(SubCategoriesRepository $subCategoriesRepository)
    {
        $this->subCategoriesRepository = $subCategoriesRepository;
    }

    public function index($perPage = 10, $search = null, $loads = [])
    {
        return $this->subCategoriesRepository->paginate($perPage, $search, $loads);
    }

    public function foredit($id)
    {
        return $this->subCategoriesRepository->forEdit($id);
    }

    public function showSubCategory($id, $loads = [])
    {
        return new SubCategoryResource($this->subCategoriesRepository->findById($id, $loads));
    }

    public function createSubCategory(SubCategoryDTO $dto)
    {
        return $this->subCategoriesRepository->create($dto->toArray());
    }

    public function updateSubCategory($id, SubCategoryDTO $dto)
    {
        // To avoid unsetting existing image if not provided in DTO update
        $data = $dto->toArray();
        if ($dto->image === null) {
            unset($data['image']);
        }

        return $this->subCategoriesRepository->update($id, $data);
    }

    public function deleteSubCategory($id)
    {
        return $this->subCategoriesRepository->delete($id);
    }
}
