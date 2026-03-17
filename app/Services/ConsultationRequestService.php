<?php

namespace App\Services;

use App\Repositories\ConsultationRequestRepository;
use App\DTOs\ConsultationRequestDTO;
use App\Models\ConsultationRequest;

class ConsultationRequestService
{
    public function __construct(
        protected ConsultationRequestRepository $repository
    ) {}

    /**
     * Store a new consultation request.
     */
    public function store(ConsultationRequestDTO $dto): ConsultationRequest
    {
        return $this->repository->create($dto);
    }

    /**
     * Get all consultation requests.
     */
    public function getAllRequests(int $perPage = 15)
    {
        return $this->repository->getAll($perPage);
    }

    /**
     * Update the status of a request.
     */
    public function updateRequestStatus(int $id, string $status): ConsultationRequest
    {
        return $this->repository->updateStatus($id, $status);
    }

    /**
     * Delete a consultation request.
     */
    public function deleteRequest(int $id): bool
    {
        return $this->repository->delete($id);
    }
}
