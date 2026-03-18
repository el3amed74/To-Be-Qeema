<?php

namespace App\Repositories;

use App\Models\ConsultationReservation;
use App\DTOs\ConsultationReservationDTO;

class ConsultationReservationRepository
{
    public function create(ConsultationReservationDTO $dto): ConsultationReservation
    {
        return ConsultationReservation::create($dto->toArray());
    }

    public function findById(int $id, array $loads = []): ConsultationReservation
    {
        return ConsultationReservation::with($loads)->findOrFail($id);
    }

    public function getByUserId(int $userId, int $perPage = 10)
    {
        return ConsultationReservation::where('user_id', $userId)
            ->with(['session', 'session.mentor'])
            ->latest()
            ->paginate($perPage);
    }

    public function getAll(int $perPage = 15)
    {
        return ConsultationReservation::with(['session', 'session.mentor', 'student'])
            ->latest()
            ->paginate($perPage);
    }

    public function updateStatus(int $id, string $status): ConsultationReservation
    {
        $reservation = $this->findById($id);
        $reservation->update(['status' => $status]);
        return $reservation;
    }

    public function getUpcomingByUserId(int $userId)
    {
        return ConsultationReservation::where('user_id', $userId)
            ->whereBetween('date', [now()->toDateString(), now()->addDays(2)->toDateString()])
            ->with(['session', 'session.mentor'])
            ->orderBy('date')
            ->orderBy('time')
            ->get();
    }
}
