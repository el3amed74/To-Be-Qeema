<?php

namespace Database\Factories;

use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\MentorDetail>
 */
class MentorDetailFactory extends Factory
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
            'deduction_type' => fake()->randomElement(['percentage', 'fixed']),
            'deduction_value' => fake()->randomFloat(2, 5, 50),
            'bank_name' => fake()->company() . ' Bank',
            'bank_account_number' => fake()->numerify('##########'),
            'bank_account_name' => fake()->name(),
            'bank_account_iban' => 'SA' . fake()->numerify('########################'),
            'bank_account_swift' => fake()->regexify('[A-Z]{4}[A-Z]{2}[A-Z0-9]{2}'),
            'bank_account_routing_number' => fake()->numerify('#########'),
            'bank_account_branch_code' => fake()->numerify('####'),
        ];
    }
}
