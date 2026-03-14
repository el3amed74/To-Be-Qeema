<?php

namespace App\Services;

use App\Repositories\CoursesRepository;
use App\DTOs\CourseListDTO;
use App\Models\User;

class CourseService
{
    public CoursesRepository $coursesRepository;

    public function __construct(CoursesRepository $coursesRepository)
    {
        $this->coursesRepository = $coursesRepository;
    }

    public function index(
        $perPage = 10,
        $search = null,
        $categoryId = null,
        $levelId = null,
        $type = null,
        $mentorId = null,
        $minPrice = null,
        $maxPrice = null,
        $accepted = null,
        $loads = [] ,
        $counts = [])
    {
        return $this->coursesRepository->paginate(
            $perPage,
            $search,
            $categoryId,
            $levelId,
            $type,
            $mentorId,
            $minPrice,
            $maxPrice,
            $accepted,
            $loads,
            $counts
        );
    }

    public function findById($id, $loads = [], $counts = [])
    {
        return $this->coursesRepository->findById($id, $loads, $counts);
    }

    public function create(array $data)
    {
        return $this->coursesRepository->create($data);
    }

    public function update($id, array $data)
    {
        return $this->coursesRepository->update($id, $data);
    }

    public function accept($id)
    {
        return $this->coursesRepository->accept($id);
    }

    public function reject($id)
    {
        return $this->coursesRepository->reject($id);
    }

    public function getNextOrder($courseId)
    {
        return $this->coursesRepository->getNextOrder($courseId);
    }

    public function getMyCourses(User $user, CourseListDTO $dto)
    {
        return $this->coursesRepository->getMyCourses($user, $dto);
    }

}
