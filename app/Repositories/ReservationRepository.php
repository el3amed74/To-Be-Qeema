<?php

namespace App\Repositories;

use App\Models\CourseReservation;
use App\DTOs\ReservationDTO;

class ReservationRepository
{
    public function create(ReservationDTO $dto): CourseReservation
    {
        return CourseReservation::create([
            'user_id' => $dto->user_id,
            'course_id' => $dto->course_id,
            'mentor_id' => $dto->mentor_id,
            'phone_number' => $dto->phone_number,
            'job_title' => $dto->job_title,
            'human_type' => $dto->human_type,
            'location' => $dto->location,
            'date' => $dto->date,
            'time' => $dto->time,
            'payment_gateway' => $dto->payment_gateway,
            'amount' => $dto->amount,
            'status' => $dto->status,
        ]);
    }

    public function findById(int $id, array $loads = []): CourseReservation
    {
        return CourseReservation::with($loads)->findOrFail($id);
    }

    public function getByUserId(int $userId, int $perPage = 10): \Illuminate\Contracts\Pagination\LengthAwarePaginator
    {
        return CourseReservation::where('user_id', $userId)
            ->with(['course', 'mentor'])
            ->latest()
            ->paginate($perPage);
    }

    public function getAll(int $perPage = 15): \Illuminate\Contracts\Pagination\LengthAwarePaginator
    {
        return CourseReservation::with(['course', 'mentor', 'student'])
            ->latest()
            ->paginate($perPage);
    }

    public function updateStatus(int $id, string $status): CourseReservation
    {
        $reservation = $this->findById($id);
        $reservation->update(['status' => $status]);
        return $reservation;
    }
}
