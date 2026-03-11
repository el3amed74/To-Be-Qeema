<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Requests\Dashboard\StoreUserRequest;
use App\Services\UserService;

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
            'data' => $user->load('roles', 'mentorDetail'),
        ], 201);
    }
}
