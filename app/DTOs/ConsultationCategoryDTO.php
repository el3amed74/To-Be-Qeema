<?php

namespace App\DTOs;

class ConsultationCategoryDTO
{
    public function __construct(
        public array $name,
        public array $description,
        public ?string $image,
        public ?string $type_slug,
        public ?string $slug,
        public string $searchable_name,
        public string $searchable_description,
    ) {
    }

    public function toArray(): array
    {
        return [
            'name' => $this->name,
            'description' => $this->description,
            'image' => $this->image,
            'type_slug' => $this->type_slug,
            'slug' => $this->slug,
            'searchable_name' => $this->searchable_name,
            'searchable_description' => $this->searchable_description,
        ];
    }
}
