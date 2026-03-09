<?php

namespace App\Http\Requests\Article;

use Illuminate\Foundation\Http\FormRequest;

class UpdateRequest extends FormRequest
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
            'course_id' => 'sometimes|required|exists:courses,id',
            'content_en' => 'sometimes|required|string',
            'content_ar' => 'sometimes|required|string',
            'title_en' => 'sometimes|required|string',
            'title_ar' => 'sometimes|required|string',
            'image' => 'sometimes|nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'earning_points' => 'sometimes|nullable|numeric|min:0',
            'is_published' => 'sometimes|nullable|boolean',
        ];
    }

    public function messages(): array
    {
        return [
            'course_id.exists' => __('The course does not exist.'),
            'content_en.string' => __('The content field must be a string.'),
            'content_ar.string' => __('The content field must be a string.'),
        ];
    }

    public function attributes(): array
    {
        return [
            'course_id' => __('Course'),
            'content_en' => __('Content (English)'),
            'content_ar' => __('Content (Arabic)'),
            'title_en' => __('Title (English)'),
            'title_ar' => __('Title (Arabic)'),
            'image' => __('Image'),
            'earning_points' => __('Earning Points'),
            'is_published' => __('Published'),
        ];
    }

}
