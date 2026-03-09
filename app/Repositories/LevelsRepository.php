<?php

namespace App\Repositories;

use App\Models\Level;
use Illuminate\Support\Facades\Storage;

class LevelsRepository
{
    public function paginate($perPage = 10, $search = null)
    {
        return Level::when($search, function ($query) use ($search) {
            $query->where('searchable_name', 'like', "%{$search}%")
                ->orWhere('searchable_description', 'like', "%{$search}%");
        })->paginate($perPage);
    }

    public function all()
    {
        return Level::all();
    }

    public function create(array $data)
    {
        return Level::create([
            'name' => [
                'en' => $data['name_en'],
                'ar' => $data['name_ar'],
            ],
            'description' => [
                'en' => $data['description_en'],
                'ar' => $data['description_ar'],
            ],
            'image' => $data['image'] ?? null,
            'searchable_name' => "{$data['name_en']} {$data['name_ar']}",
            'searchable_description' => "{$data['description_en']} {$data['description_ar']}",
        ]);
    }

    public function findById($id)
    {
        return Level::findOrFail($id);
    }

    public function update($id, array $data)
    {
        $level = Level::findOrFail($id);
        if(isset($data['image']) && $data['image'] && $level->image && Storage::exists($level->image)) {
            Storage::delete($level->image);
        }
        $indexedName = $data['name_en'] ?? $level->getTranslation('name', 'en');
        $indexedName .= " ".($data['name_ar'] ?? $level->getTranslation('name', 'ar'));

        $indexedDescription = $data['description_en'] ?? $level->getTranslation('description', 'en');
        $indexedDescription .= " ".($data['description_ar'] ?? $level->getTranslation('description', 'ar'));

        return $level->update([
            'name' => [
                'en' => $data['name_en'] ?? $level->getTranslation('name', 'en'),
                'ar' => $data['name_ar'] ?? $level->getTranslation('name', 'ar'),
            ],
            'description' => [
                'en' => $data['description_en'] ?? $level->getTranslation('description', 'en'),
                'ar' => $data['description_ar'] ?? $level->getTranslation('description', 'ar'),
            ],
            'image' => $data['image'] ?? $level->image,
            'searchable_name' => $indexedName ?? null,
            'searchable_description' => $indexedDescription ?? null,
        ]);
    }

    public function delete( $id)
    {
        $level = Level::findOrFail($id);
        if($level->image && Storage::exists($level->image)) {
            Storage::delete($level->image);
        }
        $level->delete();
        return true;
    }

    public function getAllWithCoursesCount($perPage = 10)
    {
        return Level::withCount('courses')->paginate($perPage);
    }

    public function getWithCourses($levelId, $perPage = 10)
    {
        $level = Level::findOrFail($levelId);
        return $level->courses()->paginate($perPage);
    }

    public function getPopular($limit = 10)
    {
        return Level::withCount('courses')
            ->orderBy('courses_count', 'desc')
            ->limit($limit)
            ->get();
    }

    public function hasCoursesEnrolled($levelId, $userId)
    {
        $level = Level::findOrFail($levelId);
        return $level->courses()
            ->whereHas('users', function ($query) use ($userId) {
                $query->where('user_id', $userId);
            })
            ->exists();
    }

    public function getLevelsWithActiveCourses($perPage = 10)
    {
        return Level::whereHas('courses')
            ->withCount('courses')
            ->paginate($perPage);
    }

    public function search($query, $perPage = 10)
    {
        return Level::where('searchable_name', 'like', "%{$query}%")
            ->orWhere('searchable_description', 'like', "%{$query}%")
            ->paginate($perPage);
    }

    public function getTotalCoursesCount($levelId)
    {
        $level = Level::findOrFail($levelId);
        return $level->courses()->count();
    }

    public function getLevelStatistics($levelId)
    {
        $level = Level::findOrFail($levelId);
        return [
            'total_courses' => $level->courses()->count(),
            'free_courses' => $level->courses()->where('type', 'free')->count(),
            'paid_courses' => $level->courses()->where('type', 'paid')->count(),
            'total_students' => $level->courses()
                ->withCount('users')
                ->get()
                ->sum('users_count'),
        ];
    }

    public function getByDifficulty($difficulty)
    {
        return Level::where('searchable_name', 'like', "%{$difficulty}%")->first();
    }

    public function getAllOrdered()
    {
        $order = ['beginner', 'intermediate', 'advanced', 'expert'];
        return Level::all()->sortBy(function ($level) use ($order) {
            $name = strtolower($level->getTranslation('name', 'en'));
            $position = array_search($name, $order);
            return $position !== false ? $position : 999;
        })->values();
    }

    public function forEdit($id)
    {
        return Level::findOrFail($id);
    }

}
