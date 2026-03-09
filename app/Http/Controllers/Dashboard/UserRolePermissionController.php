<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;
use App\Models\User;
use App\Services\UserRolePermissionService;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;

class UserRolePermissionController extends Controller
{
    protected UserRolePermissionService $service;

    public function __construct(UserRolePermissionService $service)
    {
        $this->service = $service;
    }

    public function index(): JsonResponse
    {
        return response()->json($this->service->getAll());
    }

    public function store(Request $request): JsonResponse
    {
        $validated = $request->validate([
            'name' => 'required|unique:roles,name',
            'guard_name' => 'required|string',
        ]);

        $role = $this->service->create($validated);

        return response()->json($role, 201);
    }

    public function show(User $user): JsonResponse
    {
        return response()->json($this->service->getUserAccess($user));
    }

    public function update(Request $request, int $id): JsonResponse
    {
        $validated = $request->validate([
            'name' => ['required', Rule::unique('roles')->ignore($id)],
            'guard_name' => 'required|string',
        ]);

        $updated = $this->service->update($id, $validated);

        return response()->json($updated);
    }

    public function destroy(int $id): JsonResponse
    {
        $this->service->delete($id);

        return response()->json(null, 204);
    }

    public function assignRole(Request $request, User $user): JsonResponse
    {
        $request->validate(['roles' => 'required|array', 'roles.*' => 'exists:roles,name']);

        $this->service->assignRoles($user, $request->roles);

        return response()->json(['message' => 'Roles assigned']);
    }

    public function removeRole(Request $request, User $user): JsonResponse
    {
        $request->validate(['roles' => 'required|array', 'roles.*' => 'exists:roles,name']);

        $this->service->removeRoles($user, $request->roles);

        return response()->json(['message' => 'Roles removed']);
    }

    public function syncRoles(Request $request, User $user): JsonResponse
    {
        $validated = $request->validate([
            'roles' => 'required|array',
            'roles.*' => 'string|exists:roles,name',
        ]);

        $this->service->syncRoles($user, $validated['roles']);

        $user->refresh(); // or $user = $user->fresh();

        return response()->json([
            'message' => 'User roles synchronized successfully',
            'user_id' => $user->id,
            'current_roles' => $user->getRoleNames(),
            'current_direct_permissions' => $user->getDirectPermissions()->pluck('name')->toArray(),
        ], 200);
    }
}
