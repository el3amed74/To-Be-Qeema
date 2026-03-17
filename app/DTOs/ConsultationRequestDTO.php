<?php

namespace App\DTOs;

class ConsultationRequestDTO
{
    public function __construct(
        public string $type,
        public string $trainning_type,
        public string $email,
        public string $phone_num,
        public string $time_to_call,
        public string $location,
        public ?int $user_id = null,
        public ?string $customer_needs = null,
        public ?string $company_needs = null,
        public ?string $company_name = null,
        public ?int $employees_num = null,
        public string $status = 'pending',
    ) {}

    public function toArray(): array
    {
        return [
            'type' => $this->type,
            'trainning_type' => $this->trainning_type,
            'email' => $this->email,
            'phone_num' => $this->phone_num,
            'time_to_call' => $this->time_to_call,
            'location' => $this->location,
            'user_id' => $this->user_id,
            'customer_needs' => $this->customer_needs,
            'company_needs' => $this->company_needs,
            'company_name' => $this->company_name,
            'employees_num' => $this->employees_num,
            'status' => $this->status,
        ];
    }
}
