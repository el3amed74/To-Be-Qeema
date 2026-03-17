<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\Api\StoreReservationRequest;
use App\Http\Resources\CourseReservationResource;
use App\Services\ReservationService;
use App\DTOs\ReservationDTO;
use App\Models\Course;
use Illuminate\Http\Request;

class ReservationController extends Controller
{
    public function __construct(
        protected ReservationService $reservationService
    ) {}

    public function index(Request $request)
    {
        $reservations = $this->reservationService->getStudentReservations(
            $request->user()->id,
            $request->per_page ?? 10
        );

        return response()->json([
            'reservations' => CourseReservationResource::collection($reservations),
            'links' => $reservations->toArray()['links'] ?? null,
        ], 200);
    }

    public function store(StoreReservationRequest $request)
    {
        if(!$this->reservationService->checkRole($request->user()->id,$request->mentor_id)){
            return response()->json([
            'message' => __('there is an error in request .')
            ],403);
        }
        if(!$this->reservationService->checkCourseMentore($request->course_id,$request->mentor_id)){
            return response()->json([
            'message' => __('please select a vaild course mentor .')
            ],403);
        }
        $course = Course::findOrFail($request->course_id);
        
        $dto = $request->toDTO($course->price);
        
        $reservation = $this->reservationService->createReservation($dto);

        return response()->json([
            'message' => __('Reservation created and enrolled successfully.'),
            'reservation' => new CourseReservationResource($reservation->load(['course', 'mentor', 'student'])),
        ], 201);
    }

    public function show($id)
    {
        $reservation = $this->reservationService->getReservation($id);
        
        return response()->json([
            'reservation' => new CourseReservationResource($reservation),
        ], 200);
    }
}
