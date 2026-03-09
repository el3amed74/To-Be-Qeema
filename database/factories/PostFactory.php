<?php

namespace Database\Factories;

use App\Models\Course;
use App\Models\Post;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Post>
 */
class PostFactory extends Factory
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
                'en' => fake()->paragraph(),
                'ar' => fake()->paragraph(),
            ],
            'type' => fake()->randomElement(Post::TYPES),
        ];
    }
}
