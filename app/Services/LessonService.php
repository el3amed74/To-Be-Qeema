<?php

namespace App\Services;

use App\Repositories\LessonsRepository;

class LessonService
{
    public LessonsRepository $lessonsRepository;

    public function __construct(LessonsRepository $lessonsRepository)
    {
        $this->lessonsRepository = $lessonsRepository;
    }

    public function index($perPage = 10, $search = null , $courseId = null , $loads = [] , $counts = [])
    {
        return $this->lessonsRepository->paginate($perPage, $search, $courseId, $loads, $counts);
    }

    public function create(array $data)
    {
        return $this->lessonsRepository->create($data);
    }

    public function findById($id, $loads = [], $counts = [])
    {
        return $this->lessonsRepository->findById($id, $loads, $counts);
    }

    public function delete($id)
    {
        return $this->lessonsRepository->delete($id);
    }

    public function getNextOrder($courseId)
    {
        return $this->lessonsRepository->getNextOrder($courseId);
    }

    public function update($id, array $data)
    {
        return $this->lessonsRepository->update($id, $data);
    }
}
