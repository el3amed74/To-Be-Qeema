<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class MentorDetailResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'id' => $this->id,
            'deduction_type' => $this->deduction_type,
            'deduction_value' => $this->deduction_value,
            'bank_name' => $this->bank_name,
            'bank_account_number' => $this->bank_account_number,
            'bank_account_name' => $this->bank_account_name,
            'bank_account_iban' => $this->bank_account_iban,
            'bank_account_swift' => $this->bank_account_swift,
            'bank_account_routing_number' => $this->bank_account_routing_number,
            'bank_account_branch_code' => $this->bank_account_branch_code,
            'created_at' => $this->created_at?->toISOString(),
        ];
    }
}
