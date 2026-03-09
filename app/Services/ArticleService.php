<?php


namespace App\Services;

use App\Repositories\ArticlesRepository;
use Illuminate\Support\Facades\Storage;

class ArticleService
{
    public ArticlesRepository $articlesRepository;

    public function __construct(ArticlesRepository $articlesRepository)
    {
        $this->articlesRepository = $articlesRepository;
    }

    public function index($perPage = 10, $search = null, $courseId = null, $userId = null, $isPublished = null, $accepted = null, $loads = [])
    {
        return $this->articlesRepository->paginate($perPage, $search, $courseId, $userId, $isPublished, $accepted, $loads);
    }

    public function create(array $data)
    {
        return $this->articlesRepository->create($data);
    }

    public function update($id, array $data)
    {
        return $this->articlesRepository->update($id, $data);
    }

    public function delete($id)
    {
        return $this->articlesRepository->delete($id);
    }

    public function show($id, $loads = [], $counts = [])
    {
        return $this->articlesRepository->findById($id, $loads, $counts);
    }

    public function publish($id)
    {
        return $this->articlesRepository->publish($id);
    }

    public function unpublish($id)
    {
        return $this->articlesRepository->unpublish($id);
    }

    public function accept($id)
    {
        return $this->articlesRepository->accept($id);
    }

    public function getPublished($perPage = 10, $courseId = null)
    {
        return $this->articlesRepository->getPublished($perPage, $courseId);
    }

    public function getByCourse($courseId, $perPage = 10, $publishedOnly = true)
    {
        return $this->articlesRepository->getByCourse($courseId, $perPage, $publishedOnly);
    }

    public function getByUser($userId, $perPage = 10, $publishedOnly = false)
    {
        return $this->articlesRepository->getByUser($userId, $perPage, $publishedOnly);
    }

    public function reject($id)
    {
        return $this->articlesRepository->reject($id);
    }
}
