<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;
use App\Http\Resources\ConsultationReservationResource;
use App\Http\Resources\CourseResource;

class ProfileResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'user_name' => $this['user_name'],
            'points' => $this['points'],
            'wallet_balance' => $this['wallet_balance'],
            'counts' => [
                'reserved_courses' => $this['reserved_courses_count'],
                'reserved_consultations' => $this['reserved_consultations_count'],
                'read_articles' => $this['read_articles_count'],
            ],
            'upcoming_consultations' => ConsultationReservationResource::collection($this['upcoming_consultations']),
            'enrolled_courses' => CourseResource::collection($this['enrolled_courses']),
        ];
    }
}
