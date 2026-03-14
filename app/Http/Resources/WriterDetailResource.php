<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class WriterDetailResource extends JsonResource
{
    public function toArray(Request $request): array
    {
        return [
            'writer_name' => $this->name,
            'courses_count' => $this->mentored_courses_count,
            'total_students_count' => (int) $this->total_students_count,
            'articles_count' => $this->articles_count,
            'courses' => CourseResource::collection($this->whenLoaded('mentoredCourses')),
            'articles' => ArticleResource::collection($this->whenLoaded('articles')),
        ];
    }
}
