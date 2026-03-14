<?php

namespace App\Http\Requests\Course;

use App\Models\Course;
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
            'name_en' => 'sometimes|required|string',
            'name_ar' => 'sometimes|required|string',
            'description_en' => 'sometimes|required|string',
            'description_ar' => 'sometimes|required|string',
            'image' => 'sometimes|required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'type' => 'sometimes|required|in:'.implode(',', Course::TYPES),
            'price' => 'sometimes|required|numeric|min:0',
            'url' => 'sometimes|required_if:type,'.Course::TYPE_RECORDED.'|url',
            'sub_category_id' => 'sometimes|required|exists:sub_categories,id',
            'level_id' => 'sometimes|required|exists:levels,id',
            'mentor_id' => 'sometimes|required|exists:users,id',
            'mentors' => 'sometimes|nullable|array',
            'mentors.*' => 'exists:users,id',
            'earning_points' => 'sometimes|required|numeric|min:0',
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
            'description_en.required' => __('The description field is required.'),
            'description_en.string' => __('The description field must be a string.'),
            'description_en.max' => __('The description field must be less than 255 characters.'),
            'description_ar.required' => __('The description field is required.'),
            'description_ar.string' => __('The description field must be a string.'),
            'description_ar.max' => __('The description field must be less than 255 characters.'),
            'image.image' => __('The image field must be an image.'),
            'image.mimes' => __('The image field must be a valid image format.'),
            'image.max' => __('The image field must be less than 2048 kilobytes.'),
            'type.required' => __('The type field is required.'),
            'type.in' => __('The type field is invalid.'),
            'price.required' => __('The price field is required.'),
            'price.numeric' => __('The price field must be a number.'),
            'price.min' => __('The price field must be greater than 0.'),
            'url.required' => __('The url field is required.'),
            'url.url' => __('The url field must be a valid url.'),
            'sub_category_id.required' => __('The sub category field is required.'),
            'sub_category_id.exists' => __('The sub category does not exist.'),
            'level_id.required' => __('The level field is required.'),
            'level_id.exists' => __('The level does not exist.'),
            'mentor_id.required' => __('The mentor field is required.'),
            'mentor_id.exists' => __('The mentor does not exist.'),
            'mentors.array' => __('The mentors field must be an array.'),
            'mentors.*.exists' => __('One or more mentors do not exist.'),
            'earning_points.required' => __('The earning points field is required.'),
            'earning_points.numeric' => __('The earning points field must be a number.'),
            'earning_points.min' => __('The earning points field must be greater than 0.'),
        ];
    }

    public function attributes(): array
    {
        return [
            'name_en' => __('Name English'),
            'name_ar' => __('Name Arabic'),
            'description_en' => __('Description English'),
            'description_ar' => __('Description Arabic'),
            'image' => __('Image'),
            'type' => __('Type'),
            'price' => __('Price'),
            'url' => __('Url'),
            'sub_category_id' => __('Sub Category'),
            'level_id' => __('Level'),
            'mentor_id' => __('Mentor'),
            'earning_points' => __('Earning Points'),
            'url.required_if' => __('The url field is required when the type is recorded.'),
        ];
    }

    
}
