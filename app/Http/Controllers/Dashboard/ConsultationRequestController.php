<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;
use App\Http\Resources\ConsultationRequestResource;
use App\Services\ConsultationRequestService;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;

class ConsultationRequestController extends Controller
{
    public function __construct(
        protected ConsultationRequestService $service
    ) {}

    /**
     * Display a listing of the resource.
     */
    public function index(Request $request): JsonResponse
    {
        $perPage = $request->get('per_page', 15);
        $requests = $this->service->getAllRequests($perPage);

        return response()->json([
            'data' => ConsultationRequestResource::collection($requests),
            'meta' => [
                'current_page' => $requests->currentPage(),
                'last_page' => $requests->lastPage(),
                'per_page' => $requests->perPage(),
                'total' => $requests->total(),
            ],
        ]);
    }

    /**
     * Display the specified resource.
     */
    public function show(int $id): JsonResponse
    {
        // For now, index shows all fields, but a dedicated show is good practice.
        // The service doesn't have a getById yet, but the repository does.
        // I'll use the repository via service if needed, but for now repository findById is enough.
        // Actually, let's keep it simple as requested.
        
        // Assuming we might need detailed view later.
        // For now just return the resource.
        $consultationRequest = \App\Models\ConsultationRequest::findOrFail($id);
        return response()->json([
            'data' => new ConsultationRequestResource($consultationRequest),
        ]);
    }

    /**
     * Update the status of the consultation request.
     */
    public function updateStatus(Request $request, int $id): JsonResponse
    {
        $validated = $request->validate([
            'status' => ['required', Rule::in(['accepted', 'rejected', 'pending'])],
        ]);

        $consultationRequest = $this->service->updateRequestStatus($id, $validated['status']);

        return response()->json([
            'message' => __('Consultation request status updated successfully'),
            'data' => new ConsultationRequestResource($consultationRequest),
        ]);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(int $id): JsonResponse
    {
        $this->service->deleteRequest($id);

        return response()->json([
            'message' => __('Consultation request deleted successfully'),
        ]);
    }
}
