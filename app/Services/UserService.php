<?php

namespace App\Services;

use App\DTOs\StoreUserDTO;
use App\Repositories\UsersRepository;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class UserService
{
    protected $usersRepository;

    public function __construct(UsersRepository $usersRepository)
    {
        $this->usersRepository = $usersRepository;
    }

    /**
     * Create a new user from the Dashboard.
     */
    public function createUser(StoreUserDTO $dto)
    {
        DB::beginTransaction();

        try {
            $data = $dto->toArray();
            
            $user = $this->usersRepository->create($data);

            if (!empty($data['roles'])) {
                $user->syncRoles($data['roles']);
            }

            // Handle mentor details if applicable
            if (!empty($data['mentor_details'])) {
                $user->mentorDetail()->create($data['mentor_details']);
            }

            DB::commit();

            return $user;
        } catch (\Exception $e) {
            DB::rollBack();
            Log::error('Error creating user: ' . $e->getMessage());
            throw $e;
        }
    }
}
