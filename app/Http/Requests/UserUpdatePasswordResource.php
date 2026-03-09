<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UserUpdatePasswordResource extends FormRequest
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
            'password' => 'required|string|min:8',
            'password_confirmation' => 'required|string|min:8|same:password',
        ];
    }

    public function messages(): array
    {
        return [
            'password.required' => __('The password field is required.'),
            'password.string' => __('The password field must be a string.'),
            'password.min' => __('The password field must be at least 8 characters.'),
        ];
    }

    public function attributes(): array
    {
        return [
            'password' => __('Password'),
            'password_confirmation' => __('Password confirmation'),
        ];
    }
}
