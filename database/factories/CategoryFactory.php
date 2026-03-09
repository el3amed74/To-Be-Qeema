<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Category>
 */
class CategoryFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $nameEn = fake()->words(2, true);
        $nameAr = fake()->words(2, true);
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
            'image' => fake()->imageUrl(640, 480, 'categories', true),
        ];
    }
}
