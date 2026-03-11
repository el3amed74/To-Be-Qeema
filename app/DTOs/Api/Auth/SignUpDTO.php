<?php

namespace App\DTOs\Api\Auth;

class SignUpDTO
{
    public function __construct(
        public string $name,
        public ?string $email,
        public ?string $phone_number,
        public string $password,
    ) {}
}
