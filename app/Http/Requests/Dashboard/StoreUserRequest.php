<?php

namespace App\Http\Requests\Dashboard;

use Illuminate\Foundation\Http\FormRequest;
use App\DTOs\StoreUserDTO;
use Spatie\Permission\Models\Role;

class StoreUserRequest extends FormRequest
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
            'email' => 'nullable|email|unique:users,email|required_without:phone_number',
            'phone_number' => 'nullable|string|max:15|unique:users,phone_number|required_without:email',
            'roles' => 'required|array',
            'roles.*' => 'exists:roles,id',
            'bank_name' => 'string|max:255',
            'bank_account_name' => 'string|max:255',
            'bank_account_number' => 'string|max:255',
            'deduction_type' => 'in:percentage,fixed',
            'deduction_value' => 'numeric|min:0',
        ];
    }

    public function withValidator($validator)
    {
        $validator->sometimes(['bank_name', 'bank_account_name', 'bank_account_number', 'deduction_type', 'deduction_value'], 'required', function ($input) {
            if (!empty($input->roles) && is_array($input->roles)) {
                $mentorRoleId = Role::where('name', 'mentor')->value('id');
                return in_array($mentorRoleId, $input->roles);
            }
            return false;
        });
    }

    public function toDTO(): StoreUserDTO
    {
        return new StoreUserDTO(
            name: $this->validated('name'),
            email: $this->validated('email'),
            phoneNumber: $this->validated('phone_number'),
            roles: array_map('intval', $this->validated('roles', [])),
            bankName: $this->validated('bank_name'),
            bankAccountName: $this->validated('bank_account_name'),
            bankAccountNumber: $this->validated('bank_account_number'),
            deductionType: $this->validated('deduction_type'),
            deductionValue: $this->validated('deduction_value') ? (float) $this->validated('deduction_value') : null,
        );
    }
}
