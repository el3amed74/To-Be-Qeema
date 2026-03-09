<?php

namespace Database\Factories;

use App\Models\PointTransactions;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\PointTransactions>
 */
class PointTransactionsFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'user_id' => User::factory(),
            'amount' => fake()->numberBetween(10, 1000),
            'type' => fake()->randomElement(PointTransactions::TYPES),
        ];
    }
}
