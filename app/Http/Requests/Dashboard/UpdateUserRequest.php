<?php

namespace App\Http\Requests\Dashboard;

use Illuminate\Foundation\Http\FormRequest;
use App\DTOs\UpdateUserDTO;

use Illuminate\Validation\Rule;
use App\Models\User;

class UpdateUserRequest extends FormRequest
{
    public function authorize(): bool
    {
        return true;
    }

    public function rules(): array
    {
        $user = $this->route('user');
        $userId = $user instanceof User ? $user->id : $user;

        return [
            'name' => 'required|string|max:255',
            'email' => 'nullable|email|required_without:phone_number|unique:users,email,' . $userId,
            'phone_number' => 'nullable|string|max:15|required_without:email|unique:users,phone_number,' . $userId,
            'roles' => 'required|array',
            'roles.*' => 'exists:roles,id',
            'permissions' => in_array(2, array_map('intval', $this->input('roles', []))) 
                ? 'required|array' 
                : 'nullable|array',
            'permissions.*' => 'exists:permissions,id',
            'password' => 'nullable|string|min:8',
        ];
    }

    public function toDTO(): UpdateUserDTO
    {
        return new UpdateUserDTO(
            name: $this->validated('name'),
            email: $this->validated('email'),
            phoneNumber: $this->validated('phone_number'),
            roles: array_map('intval', $this->validated('roles', [])),
            permissions: $this->validated('permissions', []),
            password: $this->validated('password'),
        );
    }
}
