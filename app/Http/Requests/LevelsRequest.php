<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class LevelsRequest extends FormRequest
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
            'name_en' => 'required|string|max:255',
            'name_ar' => 'required|string|max:255',
            'description_en' => 'nullable|string',
            'description_ar' => 'nullable|string',
            'image' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ];
    }

    public function messages(): array
    {
        return [
            'name_en.required' => __('The name field is required.'),
            'name_en.string' => __('The name field must be a string.'),
            'name_en.max' => __('The name field must be less than 255 characters.'),
            'name_ar.required' => __('The name field is required.'),
            'name_ar.string' => __('The name field must be a string.'),
            'name_ar.max' => __('The name field must be less than 255 characters.'),
            'description_en.string' => __('The description field must be a string.'),
            'description_ar.string' => __('The description field must be a string.'),
            'image.image' => __('The image field must be an image.'),
            'image.mimes' => __('The image field must be a valid image format.'),
            'image.max' => __('The image field must be less than 2048 kilobytes.'),
        ];
    }

    public function attributes(): array
    {
        return [
            'name_en' => __('Name (English)'),
            'name_ar' => __('Name (Arabic)'),
            'description_en' => __('Description (English)'),
            'description_ar' => __('Description (Arabic)'),
            'image' => __('Image'),
        ];
    }
}
