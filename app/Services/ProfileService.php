<?php

namespace App\Services;

use App\Repositories\UsersRepository;
use App\Repositories\ReservationRepository;
use App\Repositories\ConsultationReservationRepository;
use App\Models\User;
use App\Models\CourseReservation;
use App\Models\ConsultationReservation;

class ProfileService
{
    public function __construct(
        protected UsersRepository $usersRepository,
        protected ReservationRepository $reservationRepository,
        protected ConsultationReservationRepository $consultationRepository
    ) {}

    public function getProfileData(int $userId): array
    {
        $user = $this->usersRepository->findById($userId, ['wallet'], ['articlesRead', 'courses']);
        
        return [
            'user_name' => $user->name,
            'points' => $user->points ?? 0,
            'wallet_balance' => $user->wallet->balance ?? 0,
            'read_articles_count' => $user->articles_read_count,
            'reserved_courses_count' => CourseReservation::where('user_id', $userId)->count(),
            'reserved_consultations_count' => ConsultationReservation::where('user_id', $userId)->count(),
            'upcoming_consultations' => $this->consultationRepository->getUpcomingByUserId($userId),
            'enrolled_courses' => $user->courses, // This uses the course_user pivot
        ];
    }
}
