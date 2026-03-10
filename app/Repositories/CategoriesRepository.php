<?php

namespace App\Repositories;

use App\Models\Category;
use Illuminate\Support\Facades\Storage;

class CategoriesRepository
{
    public function paginate($perPage = 10, $search = null, $loads = [])
    {
        return Category::with($loads)->withCount('courses')->when($search, function ($query) use ($search) {
            $query->where('searchable_name', 'like', "%{$search}%")
                ->orWhere('searchable_description', 'like', "%{$search}%")
                ->orWhere('type_slug', 'like', "%{$search}%");
        })->paginate($perPage);
    }

    public function forEdit($id)
    {
        return Category::findOrFail($id);
    }

    public function all()
    {
        return Category::all();
    }

    public function create(array $data)
    {
        return Category::create([
            'name' => [
                'en' => $data['name_en'],
                'ar' => $data['name_ar'],
            ],
            'description' => [
                'en' => $data['description_en'],
                'ar' => $data['description_ar'],
            ],
            'searchable_name' => "{$data['name_en']} {$data['name_ar']}",
            'searchable_description' => "{$data['description_en']} {$data['description_ar']}",
            'type_slug' => $data['type_slug'] ?? null,
            'image' => $data['image'] ?? null,
        ]);
    }

    public function findById($id, $loads = [])
    {
        return Category::with($loads)->withCount('courses')->findOrFail($id);
    }

    public function update($id, array $data)
    {
        $category = Category::findOrFail($id);
        $indexedName = $data['name_en'] ?? $category->getTranslation('name', 'en');
        $indexedName .= ' '.($data['name_ar'] ?? $category->getTranslation('name', 'ar'));

        $indexedDescription = $data['description_en'] ?? $category->getTranslation('description', 'en');
        $indexedDescription .= ' '.($data['description_ar'] ?? $category->getTranslation('description', 'ar'));

        if (isset($data['image']) && $data['image']) {
            Storage::delete($category->image);
        }

        return $category->update([
            'name' => [
                'en' => $data['name_en'] ?? $category->getTranslation('name', 'en'),
                'ar' => $data['name_ar'] ?? $category->getTranslation('name', 'ar'),
            ],
            'description' => [
                'en' => $data['description_en'] ?? $category->getTranslation('description', 'en'),
                'ar' => $data['description_ar'] ?? $category->getTranslation('description', 'ar'),
            ],
            'searchable_name' => $indexedName ?? null,
            'searchable_description' => $indexedDescription ?? null,
            'type_slug' => $data['type_slug'] ?? $category->type_slug,
            'image' => $data['image'] ?? $category->image,
        ]);
    }

    public function delete($id)
    {
        $category = Category::findOrFail($id);
        if ($category->image && Storage::exists($category->image)) {
            Storage::delete($category->image);
        }
        $category->delete();

        return true;
    }

    public function getAllWithCoursesCount($perPage = 10)
    {
        return Category::withCount('courses')->paginate($perPage);
    }

    public function getWithCourses($categoryId, $perPage = 10)
    {
        $category = Category::findOrFail($categoryId);

        return $category->courses()->paginate($perPage);
    }

    public function getPopular($limit = 10)
    {
        return Category::withCount('courses')
            ->orderBy('courses_count', 'desc')
            ->limit($limit)
            ->get();
    }

    public function hasCoursesEnrolled($categoryId, $userId)
    {
        $category = Category::findOrFail($categoryId);

        return $category->courses()
            ->whereHas('users', function ($query) use ($userId) {
                $query->where('user_id', $userId);
            })
            ->exists();
    }

    public function getCategoriesWithActiveCourses($perPage = 10)
    {
        return Category::whereHas('courses')
            ->withCount('courses')
            ->paginate($perPage);
    }

    public function search($query, $perPage = 10)
    {
        return Category::where('searchable_name', 'like', "%{$query}%")
            ->orWhere('searchable_description', 'like', "%{$query}%")
            ->orWhere('type_slug', 'like', "%{$query}%")
            ->paginate($perPage);
    }

    public function getTotalCoursesCount($categoryId)
    {
        $category = Category::findOrFail($categoryId);

        return $category->courses()->count();
    }
}
