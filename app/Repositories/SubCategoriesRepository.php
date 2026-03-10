<?php

namespace App\Repositories;

use App\Models\SubCategory;
use Illuminate\Support\Facades\Storage;

class SubCategoriesRepository
{
    public function paginate($perPage = 10, $search = null, $loads = [])
    {
        return SubCategory::with($loads)->when($search, function ($query) use ($search) {
            $query->where('searchable_name', 'like', "%{$search}%")
                ->orWhere('searchable_description', 'like', "%{$search}%");
        })->paginate($perPage);
    }

    public function forEdit($id)
    {
        return SubCategory::findOrFail($id);
    }

    public function all()
    {
        return SubCategory::all();
    }

    public function create(array $data)
    {
        return SubCategory::create($data);
    }

    public function findById($id, $loads = [])
    {
        return SubCategory::with($loads)->findOrFail($id);
    }

    public function update($id, array $data)
    {
        $subCategory = SubCategory::findOrFail($id);

        if (isset($data['image']) && $data['image'] && $subCategory->image) {
            Storage::disk('public')->delete($subCategory->image);
        }

        return $subCategory->update($data);
    }

    public function delete($id)
    {
        $subCategory = SubCategory::findOrFail($id);
        
        if ($subCategory->image && Storage::disk('public')->exists($subCategory->image)) {
            Storage::disk('public')->delete($subCategory->image);
        }
        
        $subCategory->delete();

        return true;
    }
}
