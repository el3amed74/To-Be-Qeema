<?php

namespace App\Services\Mobile;

use App\DTOs\Api\Auth\LoginDTO;
use App\DTOs\Api\Auth\SignUpDTO;
use App\Repositories\Mobile\UserRepository;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\DB;

class UserAuthService
{
    protected UserRepository $userRepository;

    public function __construct(UserRepository $userRepository)
    {
        $this->userRepository = $userRepository;
    }

    public function register(SignUpDTO $dto): array
    {
        $userData = [
            'name' => $dto->name,
            'email' => $dto->email,
            'phone_number' => $dto->phone_number,
            'password' => Hash::make($dto->password),
        ];

        return DB::transaction(function () use ($userData) {
            $user = $this->userRepository->create($userData);
            $user->assignRole('student');
            $token = $user->createToken('auth_token')->plainTextToken;

            return [
                'user' => $user,
                'token' => $token,
                'role' => $user->roles,
            ];
        });
    }

    public function login(LoginDTO $dto): array
    {
        $user = $this->userRepository->findByIdentifier($dto->identifier);

        if (! $user) {
            throw new \Exception(__('User not found.'));
        }

        if (! Hash::check($dto->password, $user->password)) {
            throw new \Exception(__('Invalid credentials.'));
        }

        $token = $user->createToken('auth_token')->plainTextToken;

        return [
            'user' => $user,
            'token' => $token,
            'role' => $user->roles,
        ];
    }
}
