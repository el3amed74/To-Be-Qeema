<?php

namespace Database\Factories;

use App\Models\Course;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Lesson>
 */
class LessonFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $title_en = fake()->sentence(4);
        $title_ar = fake()->sentence(4);
        
        return [
            'course_id' => Course::factory(),
            'title' => [
                'en' => $title_en,
                'ar' => $title_ar,
            ],
            'description' => [
                'en' => fake()->paragraph(),
                'ar' => fake()->paragraph(),
            ],
            'searchable_title' => $title_en . ' ' . $title_ar,
            'searchable_description' => fake()->paragraph(),
            'video_url' => fake()->url(),
            'duration' => fake()->numberBetween(5, 120),
        ];
    }
}
