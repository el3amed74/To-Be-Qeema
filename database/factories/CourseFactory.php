<?php

namespace Database\Factories;

use App\Models\Category;
use App\Models\Course;
use App\Models\Level;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Course>
 */
class CourseFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $name_en = fake()->sentence(3);
        $name_ar = fake()->sentence(3);
        
        return [
            'name' => [
                'en' => $name_en,
                'ar' => $name_ar,
            ],
            'description' => [
                'en' => fake()->paragraph(),
                'ar' => fake()->paragraph(),
            ],
            'searchable_name' => $name_en . ' ' . $name_ar,
            'searchable_description' => fake()->paragraph(),
            'image' => fake()->imageUrl(640, 480, 'courses', true),
            'type' => fake()->randomElement(Course::TYPES),
            'price' => fake()->randomFloat(2, 0, 1000),
            'url' => fake()->url(),
            'category_id' => Category::factory(),
            'level_id' => Level::factory(),
            'mentor_id' => User::factory(),
        ];
    }
}
