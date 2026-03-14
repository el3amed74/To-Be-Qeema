<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\Api\CourseListRequest;
use App\DTOs\CourseListDTO;
use App\Services\CourseService;
use App\Http\Resources\CourseResource;
use Illuminate\Http\Resources\Json\AnonymousResourceCollection;

class ListCourseController extends Controller
{
    public function __construct(
        protected CourseService $courseService
    ) {
    }

    /**
     * Get the authenticated user's courses (mentored or enrolled).
     */
    public function myCourses(CourseListRequest $request): AnonymousResourceCollection
    {
        $dto = $request->toDTO();
        $user = $request->user();

        $courses = $this->courseService->getMyCourses($user, $dto)->load('mentors');

        return CourseResource::collection($courses);
    }
}
