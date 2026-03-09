<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class FaqRequest extends FormRequest
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
            'question_en' => 'required|string',
            'question_ar' => 'required|string',
            'answer_en' => 'required|string',
            'answer_ar' => 'required|string',
        ];
    }

    public function messages(): array
    {
        return [
            'question_en.required' => __('The question field is required.'),
            'question_en.string' => __('The question field must be a string.'),
            'question_en.max' => __('The question field must be less than 255 characters.'),
            'question_ar.required' => __('The question field is required.'),
            'question_ar.string' => __('The question field must be a string.'),
            'question_ar.max' => __('The question field must be less than 255 characters.'),
            'answer_en.required' => __('The answer field is required.'),
            'answer_en.string' => __('The answer field must be a string.'),
            'answer_ar.required' => __('The answer field is required.'),
            'answer_ar.string' => __('The answer field must be a string.'),
        ];
    }

    public function attributes(): array
    {
        return [
            'question_en' => __('Question (English)'),
            'question_ar' => __('Question (Arabic)'),
            'answer_en' => __('Answer (English)'),
            'answer_ar' => __('Answer (Arabic)'),
        ];
    }
}
