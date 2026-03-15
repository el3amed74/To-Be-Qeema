<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ConsultationSessionRequest extends FormRequest
{
    public function authorize(): bool
    {
        return true;
    }

    public function rules(): array
    {
        return [
            'name_en' => 'required|string|max:255',
            'name_ar' => 'required|string|max:255',
            'description_en' => 'required|string',
            'description_ar' => 'required|string',
            'content_en' => 'required|string',
            'content_ar' => 'required|string',
            'price' => 'required|numeric',
            'duration' => 'required|integer',
            'type' => 'required|in:live,recorded,offline',
            'earning_points' => 'required|integer',
            'consultation_sub_category_id' => 'required|exists:consultation_sub_categories,id',
            'mentor_id' => 'required|exists:users,id',
            'image' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'video_url' => 'nullable|url',
        ];
    }

    public function toDTO(?string $imagePath = null): \App\DTOs\ConsultationSessionDTO
    {
        return new \App\DTOs\ConsultationSessionDTO(
            name: ['en' => $this->name_en, 'ar' => $this->name_ar],
            description: ['en' => $this->description_en, 'ar' => $this->description_ar],
            content: ['en' => $this->content_en ?? '', 'ar' => $this->content_ar ?? ''],
            image: $imagePath,
            video_url: $this->video_url,
            price: (float) ($this->price ?? 0),
            duration: $this->duration ? (int) $this->duration : null,
            type: $this->type ?? 'live',
            earning_points: (int) ($this->earning_points ?? 0),
            consultation_sub_category_id: (int) $this->consultation_sub_category_id,
            mentor_id: (int) $this->mentor_id,
            searchable_name: trim("{$this->name_en} {$this->name_ar}"),
            searchable_description: trim("{$this->description_en} {$this->description_ar}"),
        );
    }
}
