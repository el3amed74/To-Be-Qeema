<?php

namespace App\Http\Requests\Api;

use Illuminate\Foundation\Http\FormRequest;
use App\DTOs\CourseListDTO;

class CourseListRequest extends FormRequest
{
    public function authorize(): bool
    {
        return true;
    }

    public function rules(): array
    {
        return [
            'search' => 'nullable|string',
            'per_page' => 'nullable|integer|min:1|max:100',
            'category_id' => 'nullable|integer|exists:categories,id',
            'level_id' => 'nullable|integer|exists:levels,id',
            'type' => 'nullable|string|in:live,offline,recorded',
        ];
    }

    public function toDTO(): CourseListDTO {
        return new CourseListDTO(
            search: $this->validated('search'),
            perPage: (int)$this->validated('per_page'),
            categoryId:$this->validated('category_id'),
            levelId: $this->validated('level_id'),
            type: $this->validated('type')
        );
    }
}
