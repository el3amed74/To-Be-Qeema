<?php

namespace App\Http\Requests\Article;

use Illuminate\Foundation\Http\FormRequest;

class StoreRequest extends FormRequest
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
            'course_id' => 'required|exists:courses,id',
            'content_en' => 'required|string',
            'content_ar' => 'required|string',
            'title_en' => 'required|string',
            'title_ar' => 'required|string',
            'image' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'earning_points' => 'nullable|numeric|min:0',
            'is_published' => 'nullable|boolean',
        ];
    }

    public function messages(): array
    {
        return [
            'course_id.required' => __('The course field is required.'),
            'course_id.exists' => __('The course does not exist.'),
            'content_en.required' => __('The content field is required.'),
            'content_en.string' => __('The content field must be a string.'),
            'content_ar.required' => __('The content field is required.'),
            'content_ar.string' => __('The content field must be a string.'),
            'title_en.required' => __('The title field is required.'),
            'title_en.string' => __('The title field must be a string.'),
            'title_ar.required' => __('The title field is required.'),
            'title_ar.string' => __('The title field must be a string.'),
            'image.image' => __('The image field must be an image.'),
            'image.mimes' => __('The image field must be a valid image format.'),
            'image.max' => __('The image field must be less than 2048 kilobytes.'),
            'is_published.required' => __('The published field is required.'),
            'is_published.boolean' => __('The published field must be a boolean.'),
            'earning_points.required' => __('The earning points field is required.'),
            'earning_points.numeric' => __('The earning points field must be a number.'),
            'earning_points.min' => __('The earning points field must be greater than 0.'),
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
            'is_published' => __('Published'),
            'earning_points' => __('Earning Points'),
        ];
    }
}
