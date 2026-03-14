<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class CourseResource extends JsonResource
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
            'type' => $this->type,
            'price' => $this->price,
            'url' => $this->url,
            'sub_category' => new SubCategoryResource($this->whenLoaded('subCategory')),
            'level' => new LevelResource($this->whenLoaded('level')),
            'mentor' => new UserResource($this->whenLoaded('mentor')),
            'mentors' => UserResource::collection($this->whenLoaded('mentors')),

            'students_count' => $this->whenCounted('users'),
            'lessons_count' => $this->whenCounted('lessons'),

            'posts_count' => $this->whenCounted('posts'),
            'polls_count' => $this->whenCounted('polls'),
            'earning_points' => $this->earning_points,
            'is_enrolled' => $this->when(isset($this->is_liked), $this->is_liked),
            'accepted' => $this->accepted_at ? true : false,
            'lessons' => LessonResource::collection($this->whenLoaded('lessons')),
            'posts' => PostResource::collection($this->whenLoaded('posts')),
            'polls' => PollResource::collection($this->whenLoaded('polls')),
            'created_at' => $this->created_at?->toISOString(),
            'updated_at' => $this->updated_at?->toISOString(),
        ];
    }
}
