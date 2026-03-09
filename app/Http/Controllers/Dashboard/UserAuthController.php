<?php

namespace App\Http\Controllers\Dashboard;

use App\Helpers\UserHelper;
use App\Http\Controllers\Controller;
use App\Http\Requests\AdminLoginRequest;
use App\Http\Requests\UserUpdatePasswordResource;
use App\Http\Requests\UserUpdateRequest;
use App\Http\Resources\UserResource;
use App\Services\UserAuthService;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class UserAuthController extends Controller
{
    protected $userAuthService;

    public function __construct()
    {
        $this->userAuthService = new UserAuthService;
    }

    public function login(AdminLoginRequest $request)
    {
        $user = $this->userAuthService->loginByEmail($request->email, $request->password);

        $token = $this->userAuthService->createSanctumToken($user);

        $roles = $this->userAuthService->getUserRoles($user);

        if ($roles->isEmpty()) {
            return response()->json([
                'message' => __('You are not authorized to access this resource.'),
            ], 403);
        }

        $permissions = $this->userAuthService->getUserPermissions($user);

        return response()->json([
            'message' => __('Login successful.'),
            'token' => $token,
            'roles' => UserHelper::getSingleRole($roles),
            'permissions' => $permissions,
            'user' => new UserResource($user),
        ]);
    }

    public function logout(Request $request)
    {
        $user = $request->user();
        $this->userAuthService->removeAccessToken($user);

        return response()->json([
            'message' => __('Logout successful.'),
        ]);
    }

    public function getUser(Request $request)
    {
        $user = $request->user();
        $roles = $this->userAuthService->getUserRoles($user);
        $permissions = $this->userAuthService->getUserPermissions($user);

        if ($roles->isEmpty()) {
            return response()->json([
                'message' => __('You are not authorized to access this resource.'),
            ], 403);
        }

        return response()->json([
            'message' => __('User retrieved successfully.'),
            'user' => new UserResource($user),
            'roles' => UserHelper::getSingleRole($roles),
            'permissions' => $permissions,
        ]);
    }

    public function updateUser(UserUpdateRequest $request)
    {
        $user = Auth::guard('sanctum')->user();
        $this->userAuthService->updateUser($user, $request->all());

        return response()->json([
            'message' => __('User updated successfully.'),
            'user' => new UserResource($user),
        ]);
    }

    public function updatePassword(UserUpdatePasswordResource $request)
    {
        $user = $request->user();
        $this->userAuthService->updatePassword($user, $request->password);

        return response()->json([
            'message' => __('Password updated successfully.'),
            'user' => new UserResource($user),
        ]);
    }

    public function logoutAllDevices(Request $request)
    {
        $user = $request->user();
        $this->userAuthService->removeAccessToken($user);

        return response()->json([
            'message' => __('All devices logged out successfully.'),
        ]);
    }
}
