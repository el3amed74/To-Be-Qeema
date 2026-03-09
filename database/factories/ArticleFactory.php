<?php

namespace Database\Factories;

use App\Models\Course;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Article>
 */
class ArticleFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'course_id' => Course::factory(),
            'user_id' => User::factory(),
            'content' => [
                'en' => fake()->paragraphs(3, true),
                'ar' => fake()->paragraphs(3, true),
            ],
            'image' => fake()->imageUrl(640, 480, 'articles', true),
            'is_published' => fake()->boolean(80),
        ];
    }
}
