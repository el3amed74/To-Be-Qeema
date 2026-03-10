<?php

namespace App\Http\Requests\Course;

use App\Models\Course;
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
            'search' => 'nullable|string',
            'sub_category_id' => 'nullable|exists:sub_categories,id',
            'level_id' => 'nullable|exists:levels,id',
            'type' => 'nullable|in:'.implode(',', Course::TYPES),
            'mentor_id' => 'nullable|exists:users,id',
            'min_price' => 'nullable|min:0|numeric',
            'max_price' => 'nullable|min:0|numeric',
            'accepted' => 'nullable|boolean',
        ];
    }

    public function messages(): array
    {
        return [
            'sub_category_id.exists' => __('The sub category does not exist.'),
            'level_id.exists' => __('The level does not exist.'),
            'type.in' => __('The type is invalid.'),
            'mentor_id.exists' => __('The mentor does not exist.'),
            'min_price.numeric' => __('The minimum price must be a number.'),
            'max_price.numeric' => __('The maximum price must be a number.'),
            'min_price.min' => __('The minimum price must be greater than 0.'),
            'max_price.min' => __('The maximum price must be greater than 0.'),
            'accepted.boolean' => __('The accepted must be a boolean.'),
        ];
    }

    public function attributes(): array
    {
        return [
            'sub_category_id' => __('Sub Category'),
            'level_id' => __('Level'),
            'type' => __('Type'),
            'min_price' => __('Minimum Price'),
            'max_price' => __('Maximum Price'),
            'accepted' => __('Accepted'),
        ];
    }
}
