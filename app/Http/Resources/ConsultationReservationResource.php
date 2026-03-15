<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class ConsultationReservationResource extends JsonResource
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
            'user' => new UserResource($this->whenLoaded('student')),
            'session' => new ConsultationSessionResource($this->whenLoaded('session')),
            'phone_number' => $this->phone_number,
            'date' => $this->date,
            'time' => $this->time,
            'payment_gateway' => $this->payment_gateway,
            'payment_id' => $this->payment_id,
            'amount' => $this->amount,
            'status' => $this->status,
            'created_at' => $this->created_at,
        ];
    }
}
