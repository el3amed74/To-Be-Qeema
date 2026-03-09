<?php

namespace App\Http\Resources;

use App\Models\Transaction;
use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class TransactionResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        $locale = app()->getLocale();
        return [
            'id' => $this->id,
            'amount' => $this->amount,
            'type' => $this->type == Transaction::TYPE_DEPOSIT ? __('Deposit') : __('Withdrawal'),
            'created_at' => $this->created_at?->toISOString(),
        ];
    }
}
