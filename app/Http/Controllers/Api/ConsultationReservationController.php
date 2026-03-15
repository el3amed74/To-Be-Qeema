<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreConsultationReservationRequest;
use App\Http\Resources\ConsultationReservationResource;
use App\Services\ConsultationReservationService;
use App\Services\ConsultationSessionService;
use Illuminate\Http\Request;

class ConsultationReservationController extends Controller
{
    public function __construct(
        protected ConsultationReservationService $reservationService,
        protected ConsultationSessionService $sessionService
    ) {}

    public function index(Request $request)
    {
        $reservations = $this->reservationService->getStudentReservations(
            $request->user()->id,
            $request->per_page ?? 10
        );

        return response()->json([
            'reservations' => ConsultationReservationResource::collection($reservations),
            'links' => $reservations->toArray()['links'] ?? null,
        ], 200);
    }

    public function store(StoreConsultationReservationRequest $request)
    {
        $session = $this->sessionService->findById($request->consultation_session_id);
        
        $dto = $request->toDTO($session->price);
        
        $reservation = $this->reservationService->createReservation($dto);

        return response()->json([
            'message' => __('Consultation reservation created and enrolled successfully.'),
            'reservation' => new ConsultationReservationResource($reservation->load(['session', 'session.mentor', 'student'])),
        ], 201);
    }

    public function show($id)
    {
        $reservation = $this->reservationService->getReservation($id);
        
        return response()->json([
            'reservation' => new ConsultationReservationResource($reservation),
        ], 200);
    }
}
