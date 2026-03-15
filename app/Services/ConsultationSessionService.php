<?php

namespace App\Services;

use App\DTOs\ConsultationSessionDTO;
use App\Repositories\ConsultationSessionsRepository;

class ConsultationSessionService
{
    protected $repository;

    public function __construct(ConsultationSessionsRepository $repository)
    {
        $this->repository = $repository;
    }

    public function index($perPage = 10, $search = null, $subCategoryId = null, $mentorId = null, $loads = [])
    {
        return $this->repository->paginate($perPage, $search, $subCategoryId, $mentorId, $loads);
    }

    public function create(ConsultationSessionDTO $dto)
    {
        return $this->repository->create($dto->toArray());
    }

    public function findById($id, $loads = [])
    {
        return $this->repository->findById($id, $loads);
    }

    public function update($id, ConsultationSessionDTO $dto)
    {
        return $this->repository->update($id, $dto->toArray());
    }

    public function delete($id)
    {
        return $this->repository->delete($id);
    }
}
