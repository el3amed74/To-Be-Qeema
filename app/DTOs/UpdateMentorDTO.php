<?php

namespace App\DTOs;

class UpdateMentorDTO
{
    public function __construct(
        public readonly string $name,
        public readonly string $email,
        public readonly ?string $password = null,
        public readonly ?string $phoneNumber = null,
        public readonly ?string $deductionType = null,
        public readonly ?float $deductionValue = null,
        public readonly ?string $bankName = null,
        public readonly ?string $bankAccountNumber = null,
        public readonly ?string $bankAccountName = null,
        public readonly ?string $bankAccountIban = null,
        public readonly ?string $bankAccountSwift = null,
        public readonly ?string $bankAccountRoutingNumber = null,
        public readonly ?string $bankAccountBranchCode = null,
    ) {
    }

    public function toArray(): array
    {
        $data = [
            'name' => $this->name,
            'email' => $this->email,
            'phone_number' => $this->phoneNumber,
            'mentor_details' => [
                'deduction_type' => $this->deductionType,
                'deduction_value' => $this->deductionValue,
                'bank_name' => $this->bankName,
                'bank_account_number' => $this->bankAccountNumber,
                'bank_account_name' => $this->bankAccountName,
                'bank_account_iban' => $this->bankAccountIban,
                'bank_account_swift' => $this->bankAccountSwift,
                'bank_account_routing_number' => $this->bankAccountRoutingNumber,
                'bank_account_branch_code' => $this->bankAccountBranchCode,
            ],
        ];

        if ($this->password) {
            $data['password'] = $this->password;
        }

        return $data;
    }
}
