<?php

namespace App\Repositories;

use App\Models\Article;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;

class ArticlesRepository
{
    public function paginate($perPage = 10, $search = null, $courseId = null, $userId = null, $isPublished = null , $accepted = null, $loads = [])
    {
        return Article::with($loads)
        ->when($search, function ($query) use ($search) {
            $query->where(function ($query) use ($search) {
                $query->where('searchable_content', 'like', "%{$search}%")
                ->orWhere('content', 'like', "%{$search}%");
            });
        })->when($courseId, function ($query) use ($courseId) {
            $query->where('course_id', $courseId);
        })->when($userId, function ($query) use ($userId) {
            $query->where('user_id', $userId);
        })->when($isPublished != null, function ($query) use ($isPublished) {
            $query->where('is_published', $isPublished);
        })->when($accepted != null && $accepted !== null, function ($query) use ($accepted) {
            if($accepted) {
            $query->accepted();
            } else {
                $query->notAccepted();
            }
        })
        ->latest()
        ->paginate($perPage);
    }

    public function all()
    {
        return Article::with(['user', 'course'])->latest()->get();
    }

    public function create(array $data)
    {
        return Article::create([
            'course_id' => $data['course_id'] ?? null,
            'user_id' => Auth::guard('sanctum')->id(),
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
            'image' => $data['image'] ?? null,
            'is_published' => $data['is_published'] ?? false,
            'earning_points' => $data['earning_points'] ?? 0,
            'accepted_at' => null,

        ]);
    }

    public function findById($id, $loads = [], $counts = [])
    {
        return Article::with($loads)->withCount($counts)->findOrFail($id)->load($loads);
    }

    public function update($id, array $data)
    {
        $article = Article::findOrFail($id);
        $image = null;
        if(isset($data['image']) && $data['image']) {
            if(Storage::exists($article->image)) {
                Storage::delete($article->image);
            }
            $image = $data['image']->store('articles', 'public');
        }
        $indexedTitle = $data['title_en'] ?? $article->getTranslation('title', 'en');
        $indexedTitle .= " ".($data['title_ar'] ?? $article->getTranslation('title', 'ar'));
        $indexedContent = $data['content_en'] ?? $article->getTranslation('content', 'en');
        $indexedContent .= " ".($data['content_ar'] ?? $article->getTranslation('content', 'ar'));

        return $article->update([
            'title' => [
                'en' => $data['title_en'],
                'ar' => $data['title_ar'],
            ],
            'content' => [
                'en' => $data['content_en'],
                'ar' => $data['content_ar'],
            ],
            'searchable_title' => $indexedTitle,
            'searchable_content' => $indexedContent,
            'image' => $image ?? $article->image,
            'is_published' => $data['is_published'] ?? $article->is_published,
            'earning_points' => $data['earning_points'] ?? $article->earning_points,
            'accepted_at' => $article->accepted_at,
        ]);
    }

    public function delete($id)
    {
        $article = Article::findOrFail($id);
        if ($article->image && Storage::disk('public')->exists($article->image)) {
            Storage::delete($article->image);
        }

        $article->delete();

        return true;
    }

    public function publish($id)
    {
        $article = Article::findOrFail($id);
        return $article->update(['is_published' => true]);
    }

    public function unpublish($id)
    {
        $article = Article::findOrFail($id);
        return $article->update(['is_published' => false]);
    }


    public function getPublished($perPage = 10, $courseId = null)
    {
        return Article::published()
            ->when($courseId, function ($query) use ($courseId) {
                $query->where('course_id', $courseId);
            })
            ->with(['user', 'course'])
            ->withCount(['usersLiked', 'usersRead'])
            ->latest()
            ->paginate($perPage);
    }

    public function getByCourse($courseId, $perPage = 10, $publishedOnly = true)
    {
        return Article::where('course_id', $courseId)
            ->when($publishedOnly, function ($query) {
                $query->published();
            })
            ->with(['user'])
            ->withCount(['usersLiked', 'usersRead'])
            ->latest()
            ->paginate($perPage);
    }

    public function getByUser($userId, $perPage = 10, $publishedOnly = false)
    {
        return Article::where('user_id', $userId)
            ->when($publishedOnly, function ($query) {
                $query->published();
            })
            ->with(['course'])
            ->withCount(['usersLiked', 'usersRead'])
            ->latest()
            ->paginate($perPage);
    }

    public function markAsRead($articleId, $userId)
    {
        $article = Article::findOrFail($articleId);

        if (!$article->usersRead()->where('user_id', $userId)->exists()) {
            $article->usersRead()->attach($userId);
        }

        return true;
    }

    public function like($articleId, $userId)
    {
        $article = Article::findOrFail($articleId);

        if (!$article->usersLiked()->where('user_id', $userId)->exists()) {
            $article->usersLiked()->attach($userId);
            return true;
        }

        return false;
    }

    public function unlike($articleId, $userId)
    {
        $article = Article::findOrFail($articleId);
        $article->usersLiked()->detach($userId);

        return true;
    }

    public function isLikedByUser($articleId, $userId)
    {
        $article = Article::findOrFail($articleId);

        return $article->usersLiked()->where('user_id', $userId)->exists();
    }

    public function isReadByUser($articleId, $userId)
    {
        $article = Article::findOrFail($articleId);

        return $article->usersRead()->where('user_id', $userId)->exists();
    }

    public function getPopular($perPage = 10, $courseId = null)
    {
        return Article::published()
            ->when($courseId, function ($query) use ($courseId) {
                $query->where('course_id', $courseId);
            })
            ->with(['user', 'course'])
            ->withCount('usersLiked')
            ->orderBy('users_liked_count', 'desc')
            ->paginate($perPage);
    }

    public function getUnreadByUser($userId, $perPage = 10, $courseId = null)
    {
        return Article::published()
            ->when($courseId, function ($query) use ($courseId) {
                $query->where('course_id', $courseId);
            })
            ->whereDoesntHave('usersRead', function ($query) use ($userId) {
                $query->where('user_id', $userId);
            })
            ->with(['user', 'course'])
            ->latest()
            ->paginate($perPage);
    }

    public function accept($id)
    {
        $article = Article::findOrFail($id);
        return $article->update(['accepted_at' => now()]);
    }

    public function reject($id)
    {
        $article = Article::findOrFail($id);
        return $article->update(['accepted_at' => null]);
    }

}
