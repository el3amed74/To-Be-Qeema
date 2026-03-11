<?php

namespace App\Repositories\Mobile;

use App\Models\User;

class UserRepository
{
    public function create(array $data): User
    {
        return User::create($data);
    }

    public function findByIdentifier(string $identifier): ?User
    {
        return User::where('email', $identifier)
            ->orWhere('phone_number', $identifier)
            ->first();
    }
}
