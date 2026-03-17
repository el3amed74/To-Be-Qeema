<?php

namespace App\Services;

use App\DTOs\StoreUserDTO;
use App\Repositories\UsersRepository;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use App\DTOs\WriterDetailDTO;

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
    /**
     * Get details for an article writer.
     */
    public function getWriterDetails(WriterDetailDTO $dto)
    {
        return $this->usersRepository->getWriterDetails($dto->id);
    }

    /**
     * Get all users with pagination and filters.
     */
    public function getAllUsers(array $filters)
    {
        $perPage = $filters['per_page'] ?? 10;
        $search = $filters['search'] ?? null;
        $role = $filters['role'] ?? null;

        return $this->usersRepository->paginate($perPage, $search, $role);
    }

    /**
     * Get user by ID with relations.
     */
    public function getUserById(int $id)
    {
        return $this->usersRepository->findById($id, ['roles', 'mentorDetail', 'wallet']);
    }

    /**
     * Delete a user.
     */
    public function deleteUser(int $id)
    {
        $user = $this->usersRepository->findById($id);
        return $this->usersRepository->delete($user);
    }
}
