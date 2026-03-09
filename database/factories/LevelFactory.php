<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Level>
 */
class LevelFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $nameEn = fake()->randomElement(['Beginner', 'Intermediate', 'Advanced', 'Expert']);
        $nameAr = fake()->randomElement(['مبتدئ', 'متوسط', 'متقدم', 'خبير']);
        $descEn = fake()->sentence();
        $descAr = fake()->sentence();

        return [
            'name' => [
                'en' => $nameEn,
                'ar' => $nameAr,
            ],
            'description' => [
                'en' => $descEn,
                'ar' => $descAr,
            ],
            'searchable_name' => $nameEn . ' ' . $nameAr,
            'searchable_description' => $descEn . ' ' . $descAr,
        ];
    }
}
