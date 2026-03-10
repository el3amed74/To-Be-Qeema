<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;
use App\Http\Requests\Course\IndexRequest;
use App\Http\Requests\Course\StoreRequest;
use App\Http\Requests\Course\UpdateRequest;
use App\Http\Resources\CourseResource;
use App\Models\Course;
use App\Repositories\UsersRepository;
use App\Services\CourseService;
use Illuminate\Http\Request;

class CourseController extends Controller
{
    public CourseService $courseService;
    public UsersRepository $usersRepository;

    public function __construct(CourseService $courseService, UsersRepository $usersRepository)
    {
        $this->courseService = $courseService;
        $this->usersRepository = $usersRepository;
    }
    /**
     * Display a listing of the resource.
     */
    public function index(IndexRequest $request)
    {
        $courses = $this->courseService
            ->index(
                $request->per_page ?? 10,
                $request->search,
                $request->sub_category_id,
                $request->level_id,
                $request->type,
                $request->mentor_id,
                $request->min_price,
                $request->max_price,
                $request->accepted,
                $request->loads ?? [
                    'subCategory',
                    'level',
                    'mentor',
                ],[
                    'users',
                    'lessons',
                    'posts',
                    'polls',
                ]);

        return response()->json([
            'message' => __('Courses fetched successfully.'),
            'courses' => [
                'data' => CourseResource::collection($courses),
                'links' => $courses->toArray()['links'] ?? null,
            ],
        ], 200);

    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreRequest $request)
    {
        if(!$this->usersRepository->hasRoleByUserId($request->mentor_id, 'mentor')) {
            return response()->json([
                'message' => __('Selected user is not a mentor.'),
            ], 403);
        }
        $data = $request->all();
        $image = null;
        if(isset($request->image) && $request->image) {
            $image = $request->file('image')->store('courses', 'public');
            $data['image'] = $image;
        }
        $data['accepted_at'] = now();
        $course = $this->courseService->create($data);
        return response()->json([
            'message' => __('Course created successfully.'),
            'course' => new CourseResource($course->load('subCategory', 'level', 'mentor')),
        ], 201);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $course =  $this->courseService->findById($id, [
            'subCategory',
            'level',
            'mentor',
            'lessons',
            'posts',
            'polls',
        ],[
            'users',
        ]);

        return response()->json([
            'message' => __('Course fetched successfully.'),
            'course' => new CourseResource($course),
        ], 200);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateRequest $request, string $id)
    {
        $data = $request->all();
        $image = null;
        if(isset($data['image']) && $data['image']) {
            $image = $request->file('image')->store('courses', 'public');
            $data['image'] = $image;
        }
        $course = $this->courseService->update($id, $data);
        return response()->json([
            'message' => __('Course updated successfully.'),
        ], 200);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }

    public function foredit(string $id)
    {
        $course = $this->courseService->findById($id);
        return response()->json([
            'message' => __('Course fetched successfully.'),
            'course' => $course,
        ], 200);
    }

    public function accept(string $id)
    {
        $course = $this->courseService->accept($id);
        return response()->json([
            'message' => __('Course accepted successfully.'),
        ], 200);
    }

    public function reject(string $id)
    {
        $course = $this->courseService->reject($id);
        return response()->json([
            'message' => __('Course rejected successfully.'),
        ], 200);
    }
}
