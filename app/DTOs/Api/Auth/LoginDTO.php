<?php

namespace App\DTOs\Api\Auth;

class LoginDTO
{
    public function __construct(
        public string $identifier,
        public string $password,
    ) {}
}
