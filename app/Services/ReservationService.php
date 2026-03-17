<?php

namespace App\Services;

use App\Repositories\ReservationRepository;
use App\Repositories\UsersRepository;
use App\DTOs\ReservationDTO;
use App\Models\CourseReservation;
use App\Models\Course;

class ReservationService
{
    public function __construct(
        protected ReservationRepository $reservationRepository,
        protected UsersRepository $usersRepository
    ) {}

    public function checkRole(int $userId, int $mentorId):bool
    {
        if($this->usersRepository->hasRoleByUserId($userId,"student") && $this->usersRepository->hasRoleByUserId($mentorId,"mentor")){
            return true;
        }
        return false;
    }
    public function checkCourseMentore(int $courseId, int $mentorId){
        return $this->reservationRepository->checkCourseMentore($courseId, $mentorId);
    }
    
    public function createReservation(ReservationDTO $dto): CourseReservation
    {
        // 1. Create the reservation record
        $reservation = $this->reservationRepository->create($dto);

        // 2. Enroll the student immediately (as requested)
        $this->usersRepository->enrollCourse($reservation->student, $reservation->course_id);

        return $reservation;
    }

    public function getReservation(int $id): CourseReservation
    {
        return $this->reservationRepository->findById($id, ['student', 'course', 'mentor']);
    }

    public function getStudentReservations(int $userId, int $perPage = 10)
    {
        return $this->reservationRepository->getByUserId($userId, $perPage);
    }

    public function getAllReservations(int $perPage = 15)
    {
        return $this->reservationRepository->getAll($perPage);
    }

    public function updateStatus(int $id, string $status): CourseReservation
    {
        return $this->reservationRepository->updateStatus($id, $status);
    }
}
