<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ConsultationCategoryRequest extends FormRequest
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
            'type_slug' => 'required|string|max:255',
            'slug' => 'required|string|max:255',
            'image' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ];
    }

    public function toDTO(?string $imagePath = null): \App\DTOs\ConsultationCategoryDTO
    {
        return new \App\DTOs\ConsultationCategoryDTO(
            name: ['en' => $this->name_en, 'ar' => $this->name_ar],
            description: ['en' => $this->description_en, 'ar' => $this->description_ar],
            image: $imagePath,
            type_slug: $this->type_slug,
            slug: $this->slug,
            searchable_name: trim("{$this->name_en} {$this->name_ar}"),
            searchable_description: trim("{$this->description_en} {$this->description_ar}"),
        );
    }
}
