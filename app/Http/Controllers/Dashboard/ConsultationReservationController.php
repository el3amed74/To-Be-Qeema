<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;
use App\Http\Resources\ConsultationReservationResource;
use App\Services\ConsultationReservationService;
use Illuminate\Http\Request;

class ConsultationReservationController extends Controller
{
    public function __construct(
        protected ConsultationReservationService $reservationService
    ) {}

    public function index(Request $request)
    {
        $reservations = $this->reservationService->getAllReservations(
            $request->per_page ?? 15
        );

        return response()->json([
            'reservations' => ConsultationReservationResource::collection($reservations),
            'links' => $reservations->toArray()['links'] ?? null,
        ], 200);
    }

    public function updateStatus(Request $request, $id)
    {
        $request->validate([
            'status' => 'required|string|in:pending,confirmed,cancelled,paid',
        ]);

        $reservation = $this->reservationService->updateStatus($id, $request->status);

        return response()->json([
            'message' => __('Reservation status updated successfully.'),
            'reservation' => new ConsultationReservationResource($reservation->load(['session', 'session.mentor', 'student'])),
        ], 200);
    }
}
