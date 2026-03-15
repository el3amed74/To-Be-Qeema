<?php

namespace App\Repositories;

use App\Models\ConsultationSession;
use Illuminate\Support\Facades\Storage;

class ConsultationSessionsRepository
{
    public function paginate($perPage = 10, $search = null, $subCategoryId = null, $mentorId = null, $loads = [])
    {
        return ConsultationSession::with($loads)
            ->when($search, function ($query) use ($search) {
                $query->where('searchable_name', 'like', "%{$search}%")
                    ->orWhere('searchable_description', 'like', "%{$search}%");
            })
            ->when($subCategoryId, function ($query) use ($subCategoryId) {
                $query->where('consultation_sub_category_id', $subCategoryId);
            })
            ->when($mentorId, function ($query) use ($mentorId) {
                $query->where('mentor_id', $mentorId);
            })
            ->paginate($perPage);
    }

    public function create(array $data)
    {
        return ConsultationSession::create($data);
    }

    public function findById($id, $loads = [])
    {
        return ConsultationSession::with($loads)->findOrFail($id);
    }

    public function update($id, array $data)
    {
        $session = ConsultationSession::findOrFail($id);
        
        if (isset($data['image']) && $data['image'] && $session->image) {
            Storage::disk('public')->delete($session->image);
        }
        
        $session->update($data);
        return $session;
    }

    public function delete($id)
    {
        $session = ConsultationSession::findOrFail($id);
        if ($session->image && Storage::disk('public')->exists($session->image)) {
            Storage::disk('public')->delete($session->image);
        }
        return $session->delete();
    }
}
