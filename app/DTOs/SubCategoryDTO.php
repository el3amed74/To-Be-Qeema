<?php

namespace App\DTOs;

use Illuminate\Http\Request;

class SubCategoryDTO
{
    public function __construct(
        public array $name,
        public array $description,
        public ?string $image,
        public int $category_id,
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
            'category_id' => $this->category_id,
            'searchable_name' => $this->searchable_name,
            'searchable_description' => $this->searchable_description,
        ];
    }
}
