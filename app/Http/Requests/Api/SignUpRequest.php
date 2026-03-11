<?php

namespace App\Http\Requests\Api;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rules\Password;
use App\DTOs\Api\Auth\SignUpDTO;

class SignUpRequest extends FormRequest
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
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array|string>
     */
    public function rules(): array
    {
        return [
            'first_name' => ['required', 'string', 'max:255'],
            'last_name' => ['required', 'string', 'max:255'],
            'email' => ['required_without:phone_number', 'nullable', 'email', 'unique:users,email'],
            'phone_number' => ['required_without:email', 'nullable', 'string', 'unique:users,phone_number'],
            'password' => [
                'required', 
                'string', 
                Password::min(8)
                    ->letters()
                    ->mixedCase()
                    ->numbers()
                    ->symbols()
            ],
        ];
    }

    public function toDTO(): SignUpDTO
    {
        return new SignUpDTO(
            name: trim($this->validated('first_name') . ' ' . $this->validated('last_name')),
            email: $this->validated('email'),
            phone_number: $this->validated('phone_number'),
            password: $this->validated('password'),
        );
    }
}
