<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreConsultationRequest;
use App\Http\Resources\ConsultationRequestResource;
use App\Services\ConsultationRequestService;
use Illuminate\Http\JsonResponse;

class ConsultationRequestController extends Controller
{
    public function __construct(
        protected ConsultationRequestService $service
    ) {}

    /**
     * Store a new consultation request.
     */
    public function store(StoreConsultationRequest $request): JsonResponse
    {
        // Use the toDTO() method in the FormRequest as requested by user
        $dto = $request->toDTO();
        
        $consultationRequest = $this->service->store($dto);

        return response()->json([
            'message' => __('Consultation request submitted successfully'),
            'data' => new ConsultationRequestResource($consultationRequest),
        ], 201);
    }
}
