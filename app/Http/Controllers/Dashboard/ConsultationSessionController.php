<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;
use App\Http\Requests\ConsultationSessionRequest;
use App\Http\Resources\ConsultationSessionResource;
use App\Services\ConsultationSessionService;
use Illuminate\Http\Request;

class ConsultationSessionController extends Controller
{
    protected $sessionService;

    public function __construct(ConsultationSessionService $sessionService)
    {
        $this->sessionService = $sessionService;
    }

    public function index(Request $request)
    {
        $sessions = $this->sessionService->index(
            $request->per_page ?? 10,
            $request->search,
            $request->consultation_sub_category_id,
            $request->mentor_id,
            ['subCategory', 'mentor']
        );

        return response()->json([
            'message' => __('Consultation sessions fetched successfully.'),
            'sessions' => [
                'data' => ConsultationSessionResource::collection($sessions),
                'links' => $sessions->toArray()['links'] ?? null,
            ],
        ], 200);
    }

    public function store(ConsultationSessionRequest $request)
    {
        $imagePath = null;
        if ($request->hasFile('image')) {
            $imagePath = $request->file('image')->store('consultations/sessions', 'public');
        }
        $dto = $request->toDTO($imagePath);
        $session = $this->sessionService->create($dto);

        return response()->json([
            'message' => __('Consultation session created successfully.'),
            'session' => new ConsultationSessionResource($session->load('subCategory', 'mentor')),
        ], 201);
    }

    public function show(string $id)
    {
        $session = $this->sessionService->findById($id, ['subCategory', 'mentor']);

        return response()->json([
            'message' => __('Consultation session fetched successfully.'),
            'session' => new ConsultationSessionResource($session),
        ], 200);
    }

    public function update(ConsultationSessionRequest $request, string $id)
    {
        $imagePath = null;
        if ($request->hasFile('image')) {
            $imagePath = $request->file('image')->store('consultations/sessions', 'public');
        }
        $dto = $request->toDTO($imagePath);
        $session = $this->sessionService->update($id, $dto);

        return response()->json([
            'message' => __('Consultation session updated successfully.'),
            'session' => new ConsultationSessionResource($session->load('subCategory', 'mentor')),
        ], 200);
    }

    public function destroy(string $id)
    {
        $this->sessionService->delete($id);

        return response()->json([
            'message' => __('Consultation session deleted successfully.'),
        ], 200);
    }
}
