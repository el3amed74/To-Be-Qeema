<?php

namespace App\Services;

use App\Repositories\LevelsRepository;

class LevelsService
{
    public LevelsRepository $levelsRepository;

    public function __construct(LevelsRepository $levelsRepository)
    {
        $this->levelsRepository = $levelsRepository;
    }

    public function index($perPage = 10, $search = null , $loads = [])
    {
        return $this->levelsRepository->paginate($perPage, $search, $loads);
    }

    public function foredit($id)
    {
        return $this->levelsRepository->forEdit($id);
    }

    public function showLevel($id)
    {
        return $this->levelsRepository->findById($id);
    }

    public function create(array $data)
    {
        return $this->levelsRepository->create($data);
    }

    public function update($id, array $data)
    {
        return $this->levelsRepository->update($id, $data);
    }

    public function delete($id)
    {
        return $this->levelsRepository->delete($id);
    }
}
