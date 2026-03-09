<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;
use App\Services\PermissionService;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;

class PermissionController extends Controller
{
    protected PermissionService $service;

    public function __construct(PermissionService $service)
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
            'name' => 'required|unique:permissions,name',
            'guard_name' => 'required|string',
        ]);

        $role = $this->service->create($validated);

        return response()->json($role, 201);
    }

    public function show(int $id): JsonResponse
    {
        // You can add find logic in service if needed
        $role = app(PermissionService::class)->getAll()->firstWhere('id', $id);
        if (! $role) {
            return response()->json(['error' => 'Not found'], 404);
        }

        return response()->json($role);
    }

    public function update(Request $request, int $id): JsonResponse
    {
        $validated = $request->validate([
            'name' => ['required', Rule::unique('permissions')->ignore($id)],
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
}
