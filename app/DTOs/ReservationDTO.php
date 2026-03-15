<?php

namespace App\DTOs;

class ReservationDTO
{
    public function __construct(
        public int $user_id,
        public int $course_id,
        public int $mentor_id,
        public string $phone_number,
        public string $job_title,
        public string $human_type,
        public ?string $location,
        public string $date,
        public string $time,
        public string $payment_gateway,
        public float $amount,
        public string $status = 'pending'
    ) {}
}
