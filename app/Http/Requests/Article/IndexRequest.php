<?php

namespace App\Http\Requests\Article;

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
            'course_id' => 'nullable|exists:courses,id',
            'user_id' => 'nullable|exists:users,id',
            'is_published' => 'nullable|boolean',
            'accepted' => 'nullable|boolean',
            'search' => 'nullable|string|max:255',
            'per_page' => 'nullable|integer|min:1|max:100',
            'page' => 'nullable|integer|min:1',
        ];
    }

    public function messages(): array
    {
        return [
            'course_id.exists' => __('The course does not exist.'),
            'user_id.exists' => __('The user does not exist.'),
            'is_published.boolean' => __('The is published must be a boolean.'),
            'accepted.boolean' => __('The accepted must be a boolean.'),
            'search.string' => __('The search must be a string.'),
            'search.max' => __('The search must be less than 255 characters.'),
            'per_page.integer' => __('The per page must be an integer.'),
            'per_page.min' => __('The per page must be greater than 0.'),
            'per_page.max' => __('The per page must be less than 100.'),
            'page.integer' => __('The page must be an integer.'),
            'page.min' => __('The page must be greater than 0.'),
            'page.max' => __('The page must be less than 100.'),
        ];
    }

    public function attributes(): array
    {
        return [
            'course_id' => __('Course'),
            'user_id' => __('User'),
            'is_published' => __('Is Published'),
            'accepted' => __('Accepted'),
            'search' => __('Search'),
            'per_page' => __('Per Page'),
            'page' => __('Page'),
        ];
    }
}
