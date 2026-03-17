<?php

namespace App\Repositories;

use App\Models\ConsultationRequest;
use App\DTOs\ConsultationRequestDTO;

class ConsultationRequestRepository
{
    /**
     * Create a new consultation request.
     */
    public function create(ConsultationRequestDTO $dto): ConsultationRequest
    {
        return ConsultationRequest::create($dto->toArray());
    }

    /**
     * Find a consultation request by ID.
     */
    public function findById(int $id): ConsultationRequest
    {
        return ConsultationRequest::findOrFail($id);
    }

    /**
     * Get all consultation requests with pagination.
     */
    public function getAll(int $perPage = 15)
    {
        return ConsultationRequest::latest()->paginate($perPage);
    }

    /**
     * Update the status of a consultation request.
     */
    public function updateStatus(int $id, string $status): ConsultationRequest
    {
        $request = $this->findById($id);
        $request->update(['status' => $status]);
        return $request;
    }

    /**
     * Delete a consultation request.
     */
    public function delete(int $id): bool
    {
        $request = $this->findById($id);
        return $request->delete();
    }
}
