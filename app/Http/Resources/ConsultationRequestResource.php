<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class ConsultationRequestResource extends JsonResource
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
            'user_id' => $this->user_id,
            'type' => $this->type,
            'trainning_type' => $this->trainning_type,
            'customer_needs' => $this->customer_needs,
            'company_needs' => $this->company_needs,
            'company_name' => $this->company_name,
            'employees_num' => $this->employees_num,
            'email' => $this->email,
            'phone_num' => $this->phone_num,
            'time_to_call' => $this->time_to_call,
            'location' => $this->location,
            'status' => $this->status,
            'created_at' => $this->created_at->toDateTimeString(),
        ];
    }
}
