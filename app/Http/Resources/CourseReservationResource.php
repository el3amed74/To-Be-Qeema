<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class CourseReservationResource extends JsonResource
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
            'student' => new UserResource($this->whenLoaded('student')),
            'course' => new CourseResource($this->whenLoaded('course')),
            'mentor' => new UserResource($this->whenLoaded('mentor')),
            'phone_number' => $this->phone_number,
            'job_title' => $this->job_title,
            'human_type' => $this->human_type,
            'location' => $this->location,
            'date' => $this->date,
            'time' => $this->time,
            'payment_gateway' => $this->payment_gateway,
            'payment_id' => $this->payment_id,
            'amount' => $this->amount,
            'status' => $this->status,
            'created_at' => $this->created_at?->toISOString(),
            'updated_at' => $this->updated_at?->toISOString(),
        ];
    }
}
