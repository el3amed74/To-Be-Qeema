<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Faq>
 */
class FaqFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'question' => [
                'en' => fake()->sentence() . '?',
                'ar' => fake()->sentence() . '؟',
            ],
            'answer' => [
                'en' => fake()->paragraph(),
                'ar' => fake()->paragraph(),
            ],
        ];
    }
}
