<?php

namespace App\Http\Controllers\Dashboard;

use App\Helpers\CourseHelper;
use App\Http\Controllers\Controller;
use App\Http\Requests\Lesson\IndexRequest;
use App\Http\Requests\Lesson\StoreRequest;
use App\Http\Requests\Lesson\UpdateRequest;
use App\Http\Resources\LessonResource;
use App\Models\Course;
use App\Models\Lesson;
use App\Services\ChunkedUploadService;
use App\Services\CourseService;
use App\Services\LessonService;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;

class LessonController extends Controller
{
    public LessonService $lessonService;

    public CourseService $courseService;

    public ChunkedUploadService $uploadService;

    public function __construct(LessonService $lessonService, CourseService $courseService, ChunkedUploadService $uploadService)
    {
        $this->lessonService = $lessonService;
        $this->courseService = $courseService;
        $this->uploadService = $uploadService;
    }

    /**
     * Display a listing of the resource.
     */
    public function index(IndexRequest $request)
    {
        $lessons = $this->lessonService->index($request->per_page ?? 10, $request->search, $request->course_id, ['course.category', 'course.level', 'course.mentor']);

        return response()->json([
            'message' => __('Lessons fetched successfully.'),
            'lessons' => [
                'data' => LessonResource::collection($lessons),
                'links' => $lessons->toArray()['links'] ?? null,
            ],
        ], 200);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreRequest $request)
    {
        $data = $request->all();
        $course = $this->courseService->findById($data['course_id']);
        if (! CourseHelper::isRecorded($course)) {
            return response()->json([
                'message' => __('The course type must be recorded.'),
            ], 400);
        }
        $lesson = $this->lessonService->create($data);

        return response()->json([
            'message' => __('Lesson created successfully.'),
            'lesson' => new LessonResource($lesson->load('course')),
        ], 201);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $lesson = $this->lessonService->findById($id, ['course.category', 'course.level', 'course.mentor']);

        return response()->json([
            'message' => __('Lesson fetched successfully.'),
            'lesson' => new LessonResource($lesson),
        ], 200);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateRequest $request, string $id)
    {
        $data = $request->all();
        $course = $this->courseService->findById($data['course_id']);
        if (CourseHelper::isRecorded($course)) {
            return response()->json([
                'message' => __('The course type must be recorded.'),
            ], 400);
        }
        $this->lessonService->update($id, $data);

        return response()->json([
            'message' => __('Lesson updated successfully.'),
        ], 200);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $lesson = $this->lessonService->delete($id);

        return response()->json([
            'message' => __('Lesson deleted successfully.'),
        ], 200);
    }

    public function foredit(string $id)
    {
        $lesson = $this->lessonService->findById($id);

        return response()->json([
            'message' => __('Lesson fetched successfully.'),
            'lesson' => $lesson,
        ], 200);
    }

    public function getNextOrder(Course $course)
    {
        return $this->lessonService->getNextOrder($course->id);
    }

    public function updateLessonVideo(Request $request)
    {

        $request->validate([
            'file' => ['required', 'file'],
            'dzuuid' => ['required', 'string'],
            'dzchunkindex' => ['required', 'integer'],
            'dztotalchunkcount' => ['required', 'integer'],
        ]);

        $finalPath = $this->uploadService->handleChunk(
            request: $request,
            destinationDisk: 'public',
            destinationFolder: 'videos/lessons'
        );

        if ($finalPath === null) {
            return response()->json([
                'message' => 'Chunk received',
            ], 200);
        }

        $request->validate([
            'lesson_id' => ['required', 'exists:lessons,id'],
        ]);

        DB::transaction(function () use ($request, $finalPath) {

            $lesson = Lesson::lockForUpdate()->findOrFail($request->lesson_id);

            if (
                $lesson->video_url &&
                Storage::disk('public')->exists($lesson->video_url)
            ) {
                Storage::disk('public')->delete($lesson->video_url);
            }

            $lesson->update([
                'video_url' => $finalPath,
            ]);
        });

        return response()->json([
            'message' => 'Upload complete',
            'path' => $finalPath,
        ], 201);
    }
}
