<?php

namespace App\Repositories;

use App\Models\ConsultationSubCategory;
use Illuminate\Support\Facades\Storage;

class ConsultationSubCategoriesRepository
{
    public function paginate($perPage = 10, $search = null, $categoryId = null, $loads = [])
    {
        return ConsultationSubCategory::with($loads)
            ->when($search, function ($query) use ($search) {
                $query->where('searchable_name', 'like', "%{$search}%")
                    ->orWhere('searchable_description', 'like', "%{$search}%");
            })
            ->when($categoryId, function ($query) use ($categoryId) {
                $query->where('consultation_category_id', $categoryId);
            })
            ->paginate($perPage);
    }

    public function create(array $data)
    {
        return ConsultationSubCategory::create($data);
    }

    public function findById($id, $loads = [])
    {
        return ConsultationSubCategory::with($loads)->findOrFail($id);
    }

    public function update($id, array $data)
    {
        $subCategory = ConsultationSubCategory::findOrFail($id);
        
        if (isset($data['image']) && $data['image'] && $subCategory->image) {
            Storage::disk('public')->delete($subCategory->image);
        }
        
        $subCategory->update($data);
        return $subCategory;
    }

    public function delete($id)
    {
        $subCategory = ConsultationSubCategory::findOrFail($id);
        if ($subCategory->image && Storage::disk('public')->exists($subCategory->image)) {
            Storage::disk('public')->delete($subCategory->image);
        }
        return $subCategory->delete();
    }
}
