<?php

namespace App\Services;

use App\Models\User;
use App\Repositories\UsersRepository;
use Exception;
use Illuminate\Support\Facades\Hash;

class UserAuthService
{
    protected $usersRepository;

    public function __construct()
    {
        $this->usersRepository = new UsersRepository;
    }

    public function loginByEmail(string $email, string $password)
    {
        $user = $this->usersRepository->findByEmail($email);
        if (! $user) {
            throw new Exception('User not found');
        }
        if (! Hash::check($password, $user->password)) {
            throw new Exception('Invalid password');
        }

        return $user;
    }

    public function createSanctumToken(User $user)
    {
        return $user->createToken('auth_token')->plainTextToken;
    }

    public function getUserRoles(User $user)
    {
        return $this->usersRepository->getUserRoles($user);
    }

    public function getUserPermissions(User $user)
    {
        return $this->usersRepository->getUserPermissions($user);
    }

    public function updatePassword(User $user, string $password)
    {
        return $this->usersRepository->updatePassword($user, $password);
    }

    public function removeAccessToken(User $user)
    {
        return $this->usersRepository->removeAccessToken($user);
    }

    public function updateUser(User $user, array $data)
    {
        return $this->usersRepository->update($user->id, $data);
    }
}
