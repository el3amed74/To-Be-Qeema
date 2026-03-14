<?php

namespace App\DTOs;

class CourseListDTO
{
    public function __construct(
        public readonly ?string $search = null,
        public readonly int $perPage = 10,
        public readonly ?int $categoryId = null,
        public readonly ?int $levelId = null,
        public readonly ?string $type = null,
    ) {
    }

    
}
