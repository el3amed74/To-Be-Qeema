<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;
use App\Http\Requests\Dashboard\MentorStoreRequest;
use App\Http\Requests\Dashboard\MentorUpdateRequest;
use App\Http\Resources\UserResource;
use App\Services\MentorService;
use Illuminate\Http\Request;

class MentorController extends Controller
{
    public MentorService $mentorService;

    public function __construct(MentorService $mentorService)
    {
        $this->mentorService = $mentorService;
    }

    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $request->validate([
            'search' => 'nullable|string|max:255',
        ]);

        $mentors = $this->mentorService->getMentors($request->per_page ?? 10, $request->search);

        return response()->json([
            'message' => __('Mentors fetched successfully.'),
            'mentors' => [
                'data' => UserResource::collection($mentors),
                'links' => $mentors->toArray()['links'] ?? null,
            ],
        ], 200);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(MentorStoreRequest $request)
    {
        $dto = $request->toDTO();
        $mentor = $this->mentorService->createMentor($dto);

        return response()->json([
            'message' => __('Mentor created successfully.'),
            'mentor' => new UserResource($mentor),
        ], 201);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $mentor = $this->mentorService->findMentorById($id,[
            'mentorDetail',
            'wallet',
        ],[
            'mentoredCourses',
            'pollsCreated',
            'courses',
            'posts',
            'pollsCreated',
        ]);

        return response()->json([
            'message' => __('Mentor fetched successfully.'),
            'mentor' => new UserResource($mentor),
        ], 200);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(MentorUpdateRequest $request, string $id)
    {
        $dto = $request->toDTO();
        $mentor = $this->mentorService->updateMentor((int) $id, $dto);

        return response()->json([
            'message' => __('Mentor updated successfully.'),
            'mentor' => new UserResource($mentor),
        ], 200);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $mentor = $this->mentorService->deleteMentor($id);

        return response()->json([
            'message' => __('Mentor deleted successfully.'),
        ], 200);
    }
}
