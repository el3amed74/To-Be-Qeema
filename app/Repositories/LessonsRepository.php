<?php

namespace App\Repositories;

use App\Models\Lesson;
use Illuminate\Support\Facades\Storage;

class LessonsRepository
{
    public function paginate($perPage = 10, $search = null , $courseId = null , $loads = [] , $counts = [])
    {
        return Lesson::with($loads)->withCount($counts)
        ->when($search, function ($query) use ($search) {
            $query->where('searchable_title', 'like', "%{$search}%")
            ->orWhere('searchable_content', 'like', "%{$search}%");
        })->when($courseId, function ($query) use ($courseId) {
            $query->where('course_id', $courseId)->ordered();
        })->paginate($perPage);
    }

    public function all()
    {
        return Lesson::all();
    }

    public function create(array $data)
    {
        return Lesson::create([
            'course_id' => $data['course_id'],
            'title' => [
                'en' => $data['title_en'],
                'ar' => $data['title_ar'],
            ],
            'content' => [
                'en' => $data['content_en'],
                'ar' => $data['content_ar'],
            ],
            'searchable_title' => "{$data['title_en']} {$data['title_ar']}",
            'searchable_content' => "{$data['content_en']} {$data['content_ar']}",
            'video_url' => $data['video_url'] ?? null,
            'duration' => $data['duration'] ?? null,
            'order' => $data['order'] ?? 0,
        ]);
    }

    public function findById($id, $loads = [], $counts = [])
    {
        return Lesson::with($loads)->withCount($counts)->findOrFail($id);
    }

    public function update($id, array $data)
    {
        $lesson = Lesson::findOrFail($id);
        return $lesson->update([
            'course_id' => $data['course_id'] ?? $lesson->course_id,
            'title' => [
                'en' => $data['title_en'] ?? $lesson->getTranslation('title', 'en'),
                'ar' => $data['title_ar'] ?? $lesson->getTranslation('title', 'ar'),
            ],
            'content' => [
                'en' => $data['content_en'] ?? $lesson->getTranslation('content', 'en'),
                'ar' => $data['content_ar'] ?? $lesson->getTranslation('content', 'ar'),
            ],
            'searchable_title' => "{$data['title_en']} {$data['title_ar']}",
            'searchable_content' => "{$data['content_en']} {$data['content_ar']}",
            'video_url' => $data['video_url'] ?? $lesson->video_url,
            'duration' => $data['duration'] ?? $lesson->duration,
            'order' => $data['order'] ?? $lesson->order,
        ]);
    }

    public function delete($id)
    {
        $lesson = Lesson::findOrFail($id);
        if($lesson->video_url && Storage::exists($lesson->video_url)) {
            Storage::delete($lesson->video_url);
        }
        $lesson->delete();
        return true;
    }

    public function getNextOrder($courseId)
    {
        return Lesson::where('course_id', $courseId)->max('order') + 1;
    }
}
