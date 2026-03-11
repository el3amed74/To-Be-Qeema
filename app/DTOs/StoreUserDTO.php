<?php

namespace App\DTOs;

class StoreUserDTO
{
    public function __construct(
        public readonly string $name,
        public readonly ?string $email,
        public readonly ?string $phoneNumber,
        public readonly ?array $roles = null,
        public readonly ?string $bankName = null,
        public readonly ?string $bankAccountName = null,
        public readonly ?string $bankAccountNumber = null,
        public readonly ?string $deductionType = null,
        public readonly ?float $deductionValue = null,
    ) {
    }

    public function toArray(): array
    {
        return [
            'name' => $this->name,
            'email' => $this->email,
            'phone_number' => $this->phoneNumber,
            'password' => 'password', // As requested
            'roles' => $this->roles,
            'mentor_details' => $this->getMentorDetails(),
        ];
    }

    private function getMentorDetails(): ?array
    {
        $mentorRoleId = \Spatie\Permission\Models\Role::where('name', 'mentor')->value('id');

        if (in_array($mentorRoleId, $this->roles ?? [])) {
            return [
                'bank_name' => $this->bankName,
                'bank_account_name' => $this->bankAccountName,
                'bank_account_number' => $this->bankAccountNumber,
                'deduction_type' => $this->deductionType,
                'deduction_value' => $this->deductionValue,
            ];
        }

        return null;
    }
}
