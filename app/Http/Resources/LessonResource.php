<?php

namespace App\Http\Resources;

use App\Helpers\CourseHelper;
use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class LessonResource extends JsonResource
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
            'title' => $this->getTranslation('title', $locale),
            'content' => $this->getTranslation('content', $locale),
            'order' => $this->order,
            'video_url' => CourseHelper::isRecorded($this->course)? asset('storage/' . $this->video_url)  : $this->video_url,
            'duration' => $this->duration,
            'created_at' => $this->created_at?->toISOString(),
            'course' => new CourseResource($this->whenLoaded('course')),
            'users' => UserResource::collection($this->whenLoaded('users')),
            'is_completed' => $this->pivot?->is_completed,
            'progress' => $this->pivot?->progress,
            'watch_time' => $this->pivot?->watch_time,
            'started_at' => $this->pivot?->started_at?->toISOString(),
        ];
    }
}
