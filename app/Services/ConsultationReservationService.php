<?php

namespace App\Services;

use App\Repositories\ConsultationReservationRepository;
use App\Repositories\UsersRepository;
use App\DTOs\ConsultationReservationDTO;
use App\Models\ConsultationReservation;

class ConsultationReservationService
{
    public function __construct(
        protected ConsultationReservationRepository $reservationRepository,
        protected UsersRepository $usersRepository
    ) {}

    public function createReservation(ConsultationReservationDTO $dto): ConsultationReservation
    {
        $reservation = $this->reservationRepository->create($dto);

        // Enroll the user in the session
        // Assuming usersRepository has a method to enroll in consultation session or similar
        // Based on previous work, we have a pivot table consultation_session_user
        $reservation->session->users()->attach($reservation->user_id);

        return $reservation;
    }

    public function getReservation(int $id): ConsultationReservation
    {
        return $this->reservationRepository->findById($id, ['student', 'session', 'session.mentor']);
    }

    public function getStudentReservations(int $userId, int $perPage = 10)
    {
        return $this->reservationRepository->getByUserId($userId, $perPage);
    }

    public function getAllReservations(int $perPage = 15)
    {
        return $this->reservationRepository->getAll($perPage);
    }

    public function updateStatus(int $id, string $status): ConsultationReservation
    {
        return $this->reservationRepository->updateStatus($id, $status);
    }
}
