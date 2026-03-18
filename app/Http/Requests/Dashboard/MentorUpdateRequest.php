<?php

namespace App\Http\Requests\Dashboard;

use Illuminate\Foundation\Http\FormRequest;
use App\DTOs\UpdateMentorDTO;
use App\Models\MentorDetail;

class MentorUpdateRequest extends FormRequest
{
    public function authorize(): bool
    {
        return true;
    }

    public function rules(): array
    {
        $mentorId = $this->route('mentor'); // Route param is 'mentor' based on apiResource

        return [
            'name' => 'required|string|max:255',
            'email' => 'required|email|unique:users,email,' . $mentorId,
            'password' => 'nullable|string|min:8',
            'phone_number' => 'required|string|max:15|unique:users,phone_number,' . $mentorId,
            
            // Mentor Details
            'deduction_type' => 'required|in:' . implode(',', MentorDetail::DEDUCTION_TYPES),
            'deduction_value' => 'required|numeric|min:0',
            'bank_name' => 'required|string|max:255',
            'bank_account_number' => 'required|string|max:255',
            'bank_account_name' => 'required|string|max:255',
            'bank_account_iban' => 'required|string|max:255',
            'bank_account_swift' => 'required|string|max:255',
            'bank_account_routing_number' => 'required|string|max:255',
            'bank_account_branch_code' => 'required|string|max:255',
        ];
    }

    public function toDTO(): UpdateMentorDTO
    {
        return new UpdateMentorDTO(
            name: $this->validated('name'),
            email: $this->validated('email'),
            password: $this->validated('password'),
            phoneNumber: $this->validated('phone_number'),
            deductionType: $this->validated('deduction_type'),
            deductionValue: (float) $this->validated('deduction_value'),
            bankName: $this->validated('bank_name'),
            bankAccountNumber: $this->validated('bank_account_number'),
            bankAccountName: $this->validated('bank_account_name'),
            bankAccountIban: $this->validated('bank_account_iban'),
            bankAccountSwift: $this->validated('bank_account_swift'),
            bankAccountRoutingNumber: $this->validated('bank_account_routing_number'),
            bankAccountBranchCode: $this->validated('bank_account_branch_code'),
        );
    }
}
