<?php

namespace App\Repositories;

use App\Models\ConsultationCategory;
use Illuminate\Support\Facades\Storage;

class ConsultationCategoriesRepository
{
    public function paginate($perPage = 10, $search = null, $loads = [])
    {
        return ConsultationCategory::with($loads)->when($search, function ($query) use ($search) {
            $query->where('searchable_name', 'like', "%{$search}%")
                ->orWhere('searchable_description', 'like', "%{$search}%");
        })->paginate($perPage);
    }

    public function create(array $data)
    {
        return ConsultationCategory::create($data);
    }

    public function findById($id, $loads = [])
    {
        return ConsultationCategory::with($loads)->findOrFail($id);
    }

    public function update($id, array $data)
    {
        $category = ConsultationCategory::findOrFail($id);
        
        if (isset($data['image']) && $data['image'] && $category->image) {
            Storage::disk('public')->delete($category->image);
        }
        
        $category->update($data);
        return $category;
    }

    public function delete($id)
    {
        $category = ConsultationCategory::findOrFail($id);
        if ($category->image && Storage::disk('public')->exists($category->image)) {
            Storage::disk('public')->delete($category->image);
        }
        return $category->delete();
    }
}
