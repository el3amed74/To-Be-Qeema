<?php

namespace App\Repositories;

use App\Models\Comment;

class CommentsRepository
{
    public function paginate($perPage = 10, $postId = null, $userId = null)
    {
        return Comment::when($postId, function ($query) use ($postId) {
            $query->where('post_id', $postId);
        })->when($userId, function ($query) use ($userId) {
            $query->where('user_id', $userId);
        })->with(['user', 'post'])
        ->latest()
        ->paginate($perPage);
    }

    public function create(array $data)
    {
        return Comment::create([
            'post_id' => $data['post_id'],
            'user_id' => $data['user_id'],
            'content' => [
                'en' => $data['content_en'],
                'ar' => $data['content_ar'],
            ],
        ]);
    }

    public function findById($id)
    {
        return Comment::with(['user', 'post'])->findOrFail($id);
    }

    public function update(Comment $comment, array $data)
    {
        return $comment->update([
            'content' => [
                'en' => $data['content_en'] ?? $comment->getTranslation('content', 'en'),
                'ar' => $data['content_ar'] ?? $comment->getTranslation('content', 'ar'),
            ],
        ]);
    }

    public function delete(Comment $comment)
    {
        $comment->delete();

        return true;
    }

    public function getByPost($postId, $perPage = 10)
    {
        return Comment::where('post_id', $postId)
            ->with(['user'])
            ->latest()
            ->paginate($perPage);
    }

    public function getByUser($userId, $perPage = 10)
    {
        return Comment::where('user_id', $userId)
            ->with(['post', 'user'])
            ->latest()
            ->paginate($perPage);
    }

    public function countByPost($postId)
    {
        return Comment::where('post_id', $postId)->count();
    }

    public function countByUser($userId)
    {
        return Comment::where('user_id', $userId)->count();
    }
}
