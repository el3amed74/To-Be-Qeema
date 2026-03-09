<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UserRequest extends FormRequest
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
            'name' => 'required|string|max:255',
            'email' => 'required|email|unique:users,email',
            'phone_number' => 'nullable|unique:users,phone_number|regex:^01[0-2]\s\d{1,8}$|string|max:255',
            'password' => 'required|string|min:8',
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
            'email.unique' => __('The email field must be unique.'),
            'phone_number.required' => __('The phone number field is required.'),
            'phone_number.string' => __('The phone number field must be a string.'),
            'phone_number.max' => __('The phone number field must be less than 255 characters.'),
            'phone_number.unique' => __('The phone number field must be unique.'),
            'phone_number.regex' => __('The phone number field must be a valid phone number.'),
            'password.required' => __('The password field is required.'),
        ];
    }

    public function attributes(): array
    {
        return [
            'name' => __('Name'),
            'email' => __('Email'),
            'phone_number' => __('Phone Number'),
            'password' => __('Password'),
        ];
    }
}
