<?php

namespace App\Services;

use App\Http\Resources\CategoryResource;
use App\Repositories\CategoriesRepository;

class CategoryService
{
    protected $categoriesRepository;

    public function __construct(CategoriesRepository $categoriesRepository)
    {
        $this->categoriesRepository = $categoriesRepository;
    }

    public function index($perPage = 10, $search = null, $loads = [])
    {
        return $this->categoriesRepository->paginate($perPage, $search, $loads);
    }

    public function foredit($id)
    {
        return $this->categoriesRepository->forEdit($id);
    }

    public function showCategory($id, $loads = [])
    {
        return new CategoryResource($this->categoriesRepository->findById($id, $loads));
    }

    public function createCategory(array $data)
    {
        return $this->categoriesRepository->create($data);
    }

    public function updateCategory($id, array $data)
    {
        return $this->categoriesRepository->update($id, $data);
    }

    public function deleteCategory($id)
    {
        return $this->categoriesRepository->delete($id);
    }
}
