<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UserUpdateRequest extends FormRequest
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
            'name' => 'sometimes|required|string|max:255',
            'email' => 'sometimes|required|email|max:255|unique:users,email,' . $this->user()->id,
        ];
    }

    public function messages(): array
    {
        return [
            'name.required' => __('The name field is required.'),
            'name.string' => __('The name field must be a string.'),
            'name.max' => __('The name field must be less than 255 characters.'),
            'email.required' => __('The email field is required.'),
            'email.email' => __('The email field must be a valid email address.'),
            'email.max' => __('The email field must be less than 255 characters.'),
            'email.unique' => __('The email address has already been taken.'),
        ];
    }
    public function attributes(): array
    {
        return [
            'name' => __('Name'),
            'email' => __('Email'),
        ];
    }
}
