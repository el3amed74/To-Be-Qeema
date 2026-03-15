<?php

namespace App\DTOs;

class ConsultationSessionDTO
{
    public function __construct(
        public array $name,
        public array $description,
        public array $content,
        public ?string $image,
        public ?string $video_url,
        public float $price,
        public ?int $duration,
        public string $type,
        public int $earning_points,
        public int $consultation_sub_category_id,
        public int $mentor_id,
        public string $searchable_name,
        public string $searchable_description,
    ) {
    }

    public function toArray(): array
    {
        return [
            'name' => $this->name,
            'description' => $this->description,
            'content' => $this->content,
            'image' => $this->image,
            'video_url' => $this->video_url,
            'price' => $this->price,
            'duration' => $this->duration,
            'type' => $this->type,
            'earning_points' => $this->earning_points,
            'consultation_sub_category_id' => $this->consultation_sub_category_id,
            'mentor_id' => $this->mentor_id,
            'searchable_name' => $this->searchable_name,
            'searchable_description' => $this->searchable_description,
        ];
    }
}
