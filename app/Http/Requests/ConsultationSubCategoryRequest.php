<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ConsultationSubCategoryRequest extends FormRequest
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
            'consultation_category_id' => 'required|exists:consultation_categories,id',
            'image' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ];
    }

    public function toDTO(?string $imagePath = null): \App\DTOs\ConsultationSubCategoryDTO
    {
        return new \App\DTOs\ConsultationSubCategoryDTO(
            name: ['en' => $this->name_en, 'ar' => $this->name_ar],
            description: ['en' => $this->description_en, 'ar' => $this->description_ar],
            image: $imagePath,
            consultation_category_id: (int) $this->consultation_category_id,
            searchable_name: trim("{$this->name_en} {$this->name_ar}"),
            searchable_description: trim("{$this->description_en} {$this->description_ar}"),
        );
    }
}
