<?php

namespace Database\Seeders;

use App\Models\GeneralSetting;
use Illuminate\Database\Seeder;

class GeneralSettingSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        GeneralSetting::create([
            'setting_key' => 'deduction_type',
            'setting_value' => GeneralSetting::DEDUCTION_TYPE_PERCENTAGE,
        ]);

        GeneralSetting::create([
            'setting_key' => 'deduction_value',
            'setting_value' => 10,
        ]);
    }
}
