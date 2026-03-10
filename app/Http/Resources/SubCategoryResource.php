<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class SubCategoryResource extends JsonResource
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
            'name' => $this->getTranslation('name', $locale),
            'description' => $this->getTranslation('description', $locale),
            'image_url' => $this->image_url,
            'category_id' => $this->category_id,
            'courses_count' => $this->whenCounted('courses'),
            
            // Relations logic
            'category' => new CategoryResource($this->whenLoaded('category')),
            'courses' => CourseResource::collection($this->whenLoaded('courses')),
        ];
    }
}
