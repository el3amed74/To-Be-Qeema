<?php

namespace App\Repositories;

use App\Models\Course;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;

class CoursesRepository
{
    public function paginate($perPage = 10 , $search = null , $subCategoryId = null , $levelId = null , $type = null , $mentorId = null , $minPrice = null , $maxPrice = null , $accepted = null, $loads = [], $counts = [])
    {
        return Course::with($loads)->withCount($counts)
        ->when($search, function ($query) use ($search) {
            $query->where(function ($query) use ($search) {
                $query->where('searchable_name', 'like', "%{$search}%")
                    ->orWhere('searchable_description', 'like', "%{$search}%");
            });
        })->when($subCategoryId, function ($query) use ($subCategoryId) {
            $query->where('sub_category_id', $subCategoryId);
        })->when($levelId, function ($query) use ($levelId) {
            $query->where('level_id', $levelId);
        })->when($type, function ($query) use ($type) {
            $query->where('type', $type);
        })->when($mentorId, function ($query) use ($mentorId) {
            $query->where('mentor_id', $mentorId);
        })->when($minPrice, function ($query) use ($minPrice) {
            $query->where('price', '>=', $minPrice);
        })->when($maxPrice, function ($query) use ($maxPrice) {
            $query->where('price', '<=', $maxPrice);
        })->when($accepted != null, function ($query) use ($accepted) {
            if($accepted) {
                $query->accepted();
            } else {
                $query->notAccepted();
            }
        })->paginate($perPage);
    }

    public function create(array $data)
    {
        return Course::create([
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
            'image' => $data['image'],
            'type' => $data['type'],
            'price' => $data['price'] ?? 0.00,
            'url' => $data['url'] ?? null,
            'sub_category_id' => $data['sub_category_id'],
            'level_id' => $data['level_id'],
            'mentor_id' => $data['mentor_id'],
            'earning_points' => $data['earning_points'] ?? 0,
            'accepted_at' => isset($data['accepted_at']) ? now() : null,
        ]);
    }

    public function findById($id, $loads = [], $counts = [])
    {
        return Course::with($loads)->withCount($counts)->findOrFail($id);
    }

    public function update($id, array $data)
    {
        $course = Course::findOrFail($id);
        if(isset($data['image']) && $data['image']) {
            if(Storage::exists($course->image)) {
                Storage::delete($course->image);
            }
        }
        $indexedName = $data['name_en'] ?? $course->getTranslation('name', 'en');
        $indexedName .= " ".($data['name_ar'] ?? $course->getTranslation('name', 'ar'));

        $indexedDescription = $data['description_en'] ?? $course->getTranslation('description', 'en');
        $indexedDescription .= " ".($data['description_ar'] ?? $course->getTranslation('description', 'ar'));

        return $course->update([
            'name' => [
                'en' => $data['name_en'] ?? $course->getTranslation('name', 'en'),
                'ar' => $data['name_ar'] ?? $course->getTranslation('name', 'ar'),
            ],
            'description' => [
                'en' => $data['description_en'] ?? $course->getTranslation('description', 'en'),
                'ar' => $data['description_ar'] ?? $course->getTranslation('description', 'ar'),
            ],
            'searchable_name' => $indexedName ?? null,
            'searchable_description' => $indexedDescription ?? null,
            'image' => $data['image'] ?? $course->image,
            'type' => $data['type'] ?? $course->type,
            'price' => $data['price'] ?? $course->price,
            'url' => $data['url'] ?? $course->url,
            'sub_category_id' => $data['sub_category_id'] ?? $course->sub_category_id,
            'level_id' => $data['level_id'] ?? $course->level_id,
            'mentor_id' => $data['mentor_id'] ?? $course->mentor_id,
        ]);
    }

    public function delete(Course $course)
    {
        if(Storage::exists($course->image)) {
            Storage::delete($course->image);
        }
        $course->delete();
        return true;
    }

    public function accept($id)
    {
        DB::table('courses')->where('id', $id)->update(['accepted_at' => now()]);
        return true;
    }

    public function reject($id)
    {
        DB::table('courses')->where('id', $id)->update(['accepted_at' => null]);
        return true;
    }

    public function getNextOrder($courseId)
    {
        return Course::where('id', $courseId)->max('order') + 1;
    }

}
