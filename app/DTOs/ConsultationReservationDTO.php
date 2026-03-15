<?php

namespace App\DTOs;

class ConsultationReservationDTO
{
    public function __construct(
        public int $user_id,
        public int $consultation_session_id,
        public string $phone_number,
        public string $date,
        public string $time,
        public string $payment_gateway,
        public float $amount,
        public string $status = 'pending',
        public ?string $payment_id = null,
    ) {}

    public function toArray(): array
    {
        return [
            'user_id' => $this->user_id,
            'consultation_session_id' => $this->consultation_session_id,
            'phone_number' => $this->phone_number,
            'date' => $this->date,
            'time' => $this->time,
            'payment_gateway' => $this->payment_gateway,
            'amount' => $this->amount,
            'status' => $this->status,
            'payment_id' => $this->payment_id,
        ];
    }
}
