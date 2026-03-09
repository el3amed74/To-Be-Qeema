<?php

namespace App\Repositories;

use App\Models\Post;
use Illuminate\Support\Facades\Storage;

class PostsRepository
{
    public function paginate($perPage = 10, $courseId = null, $userId = null, $type = null)
    {
        return Post::when($courseId, function ($query) use ($courseId) {
            $query->where('course_id', $courseId);
        })->when($userId, function ($query) use ($userId) {
            $query->where('user_id', $userId);
        })->when($type, function ($query) use ($type) {
            $query->where('type', $type);
        })->with(['user', 'course'])
        ->latest()
        ->paginate($perPage);
    }

    public function all()
    {
        return Post::with(['user', 'course'])->latest()->get();
    }

    public function create(array $data)
    {
        return Post::create([
            'course_id' => $data['course_id'] ?? null,
            'user_id' => $data['user_id'] ?? null,
            'content' => [
                'en' => $data['content_en'],
                'ar' => $data['content_ar'],
            ],
            'type' => $data['type'] ?? Post::TYPE_TEXT,
        ]);
    }

    public function findById($id)
    {
        return Post::with(['user', 'course', 'comments'])->findOrFail($id);
    }

    public function update(Post $post, array $data)
    {
        return $post->update([
            'course_id' => $data['course_id'] ?? $post->course_id,
            'user_id' => $data['user_id'] ?? $post->user_id,
            'content' => [
                'en' => $data['content_en'] ?? $post->getTranslation('content', 'en'),
                'ar' => $data['content_ar'] ?? $post->getTranslation('content', 'ar'),
            ],
            'type' => $data['type'] ?? $post->type,
        ]);
    }

    public function delete(Post $post)
    {
        if($post->type == Post::TYPE_IMAGE && Storage::exists($post->image)) {
            Storage::delete($post->image);
        }
        if($post->type == Post::TYPE_VIDEO && Storage::exists($post->video_url)) {
            Storage::delete($post->video_url);
        }
        $post->delete();
        return true;
    }

    public function getPostsWithLikes($perPage = 10, $user = null)
    {
        return Post::withLiked($user)
            ->with(['user', 'course'])
            ->withCount('users')
            ->latest()
            ->paginate($perPage);
    }

    public function getByCourse($courseId, $perPage = 10, $user = null)
    {
        return Post::where('course_id', $courseId)
            ->withLiked($user)
            ->with(['user', 'course'])
            ->withCount(['users', 'comments'])
            ->latest()
            ->paginate($perPage);
    }

    public function getByUser($userId, $perPage = 10)
    {
        return Post::where('user_id', $userId)
            ->with(['user', 'course'])
            ->withCount(['users', 'comments'])
            ->latest()
            ->paginate($perPage);
    }
}
