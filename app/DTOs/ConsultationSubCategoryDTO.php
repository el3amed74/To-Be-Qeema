<?php

namespace App\DTOs;

class ConsultationSubCategoryDTO
{
    public function __construct(
        public array $name,
        public array $description,
        public ?string $image,
        public int $consultation_category_id,
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
            'consultation_category_id' => $this->consultation_category_id,
            'searchable_name' => $this->searchable_name,
            'searchable_description' => $this->searchable_description,
        ];
    }
}
