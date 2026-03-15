<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;
use App\Http\Resources\CourseReservationResource;
use App\Services\ReservationService;
use Illuminate\Http\Request;

class ReservationController extends Controller
{
    public function __construct(
        protected ReservationService $reservationService
    ) {}

    public function index(Request $request)
    {
        $reservations = $this->reservationService->getAllReservations(
            $request->per_page ?? 15
        );

        return response()->json([
            'reservations' => CourseReservationResource::collection($reservations),
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
            'reservation' => new CourseReservationResource($reservation->load(['course', 'mentor', 'student'])),
        ], 200);
    }
}
