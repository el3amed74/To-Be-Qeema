<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Requests\Dashboard\StoreUserRequest;
use App\Services\UserService;
use App\Models\User;
use App\Http\Requests\Dashboard\UpdateUserRequest;
use App\Http\Resources\UserResource;

class UserController extends Controller
{
    protected $userService;

    public function __construct(UserService $userService)
    {
        $this->userService = $userService;
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreUserRequest $request)
    {
        $dto = $request->toDTO();

        $user = $this->userService->createUser($dto);

        return response()->json([
            'message' => 'User created successfully',
            'user' => $user,
            'permissions' => $user->permissions,
        ], 201);
    }

    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $users = $this->userService->getAllUsers($request->all());

        return UserResource::collection($users);
    }

    /**
     * Display the specified resource.
     */
    public function show(int $id)
    {
        $user = $this->userService->getUserById($id);

        return new UserResource($user);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateUserRequest $request, User $user)
    {
        $dto = $request->toDTO();

        $user = $this->userService->updateUser($user->id, $dto);

        return response()->json([
            'message' => 'User updated successfully',
            'user' => $user,
            'permissions' => $user->permissions,
        ]);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(int $id)
    {
        $this->userService->deleteUser($id);

        return response()->json([
            'message' => 'User deleted successfully',
        ]);
    }
}
