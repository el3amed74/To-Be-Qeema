<?php

namespace App\Repositories;

use App\Models\Poll;

class PollsRepository
{
    public function paginate($perPage = 10, $courseId = null, $userId = null)
    {
        return Poll::when($courseId, function ($query) use ($courseId) {
            $query->where('course_id', $courseId);
        })->when($userId, function ($query) use ($userId) {
            $query->where('user_id', $userId);
        })->with(['user', 'course', 'options'])
        ->latest()
        ->paginate($perPage);
    }

    public function all()
    {
        return Poll::with(['user', 'course', 'options'])->latest()->get();
    }

    public function create(array $data)
    {
        return Poll::create([
            'course_id' => $data['course_id'],
            'user_id' => $data['user_id'],
            'content' => [
                'en' => $data['content_en'],
                'ar' => $data['content_ar'],
            ],
        ]);
    }

    public function findById($id)
    {
        return Poll::with(['user', 'course', 'options'])->findOrFail($id);
    }

    public function update(Poll $poll, array $data)
    {
        return $poll->update([
            'content' => [
                'en' => $data['content_en'] ?? $poll->getTranslation('content', 'en'),
                'ar' => $data['content_ar'] ?? $poll->getTranslation('content', 'ar'),
            ],
        ]);
    }

    public function delete(Poll $poll)
    {
        $poll->delete();

        return true;
    }

    public function getByCourse($courseId, $perPage = 10)
    {
        return Poll::where('course_id', $courseId)
            ->with(['user', 'options'])
            ->withCount('options')
            ->latest()
            ->paginate($perPage);
    }

    public function getByUser($userId, $perPage = 10)
    {
        return Poll::where('user_id', $userId)
            ->with(['course', 'user', 'options'])
            ->withCount('options')
            ->latest()
            ->paginate($perPage);
    }

    public function getWithResults($pollId)
    {
        return Poll::with(['options.users'])
            ->withCount('options')
            ->findOrFail($pollId);
    }
}
