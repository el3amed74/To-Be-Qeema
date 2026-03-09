<?php

namespace App\Http\Requests\Lesson;

use Illuminate\Foundation\Http\FormRequest;

class IndexRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
            'per_page' => 'nullable|integer|min:1',
            'search' => 'nullable|string',
            'course_id' => 'nullable|integer|exists:courses,id',
        ];
    }

    public function messages(): array
    {
        return [
            'course_id.exists' => __('The course does not exist.'),
            'per_page.integer' => __('The per page must be an integer.'),
            'per_page.min' => __('The per page must be greater than 0.'),
            'search.string' => __('The search must be a string.'),
        ];
    }

    public function attributes(): array
    {
        return [
            'per_page' => __('Per Page'),
            'search' => __('Search'),
            'course_id' => __('Course ID'),
        ];
    }
}
