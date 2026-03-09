<?php

namespace App\Http\Requests\Lesson;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

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
            'title_en' => 'sometimes|required|string|max:255',
            'title_ar' => 'sometimes|required|string|max:255',
            'content_en' => 'sometimes|required|string',
            'content_ar' => 'sometimes|required|string',
            'video_url' => 'sometimes|required|url',
            'duration' => 'sometimes|required|integer',
            'order' => [
                'sometimes',
                'integer',
                Rule::unique('lessons')
                    ->where(fn ($q) => $q->where('course_id', $this->course_id)),
            ],
        ];
    }

    public function messages(): array
    {
        return [
            'title_en.required' => __('The title field is required.'),
            'title_en.string' => __('The title field must be a string.'),
            'title_en.max' => __('The title field must be less than 255 characters.'),
            'title_ar.required' => __('The title field is required.'),
            'title_ar.string' => __('The title field must be a string.'),
            'title_ar.max' => __('The title field must be less than 255 characters.'),
            'content_en.required' => __('The content field is required.'),
            'content_en.string' => __('The content field must be a string.'),
            'content_ar.required' => __('The content field is required.'),
            'content_ar.string' => __('The content field must be a string.'),
            'video_url.url' => __('The video url field must be a valid url.'),
            'duration.required' => __('The duration field is required.'),
            'duration.integer' => __('The duration field must be an integer.'),
            'order.required' => __('The order field is required.'),
            'order.integer' => __('The order field must be an integer.'),
            'order.unique' => __('The order field must be unique.'),
            'course_id.required' => __('The course field is required.'),
            'course_id.exists' => __('The course does not exist.'),
        ];
    }
    public function attributes(): array
    {
        return [
            'title_en' => __('Title (English)'),
            'title_ar' => __('Title (Arabic)'),
            'content_en' => __('Content (English)'),
            'content_ar' => __('Content (Arabic)'),
            'video_url' => __('Video Url'),
            'duration' => __('Duration'),
            'order' => __('Order'),
            'course_id' => __('Course'),
        ];
    }
}
