<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\Api\LoginRequest;
use App\Http\Requests\Api\SignUpRequest;
use App\Http\Resources\UserResource;
use App\Services\Mobile\UserAuthService;

class AuthController extends Controller
{
    protected UserAuthService $userAuthService;
    protected DashboardAuthService $dashboardUserAuthService;

    public function __construct(UserAuthService $userAuthService)
    {
        $this->userAuthService = $userAuthService;

    }

    public function signUp(SignUpRequest $request)
    {
        $dto = $request->toDTO();

        $result = $this->userAuthService->register($dto);
        
        return response()->json([
            'message' => __('User registered successfully.'),
            'token' => $result['token'],
            'user' => new UserResource($result['user']),
        ], 201);
    }

    public function login(LoginRequest $request)
    {
        $dto = $request->toDTO();

        try {
            $result = $this->userAuthService->login($dto);
            
            return response()->json([
                'message' => __('Login successful.'),
                'token' => $result['token'],
                'user' => new UserResource($result['user']),
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'message' => $e->getMessage(),
            ], 401);
        }
    }
}
