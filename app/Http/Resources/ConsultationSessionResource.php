<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class ConsultationSessionResource extends JsonResource
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
            'name' => $this->getTranslations('name'),
            'description' => $this->getTranslations('description'),
            'content' => $this->getTranslations('content'),
            'image' => $this->image_url,
            'video_url' => $this->video_url,
            'price' => $this->price,
            'duration' => $this->duration,
            'type' => $this->type,
            'earning_points' => $this->earning_points,
            'consultation_sub_category_id' => $this->consultation_sub_category_id,
            'sub_category' => new ConsultationSubCategoryResource($this->whenLoaded('subCategory')),
            'mentor_id' => $this->mentor_id,
            'mentor' => new UserResource($this->whenLoaded('mentor')),
            'created_at' => $this->created_at,
            'updated_at' => $this->updated_at,
        ];
    }
}
