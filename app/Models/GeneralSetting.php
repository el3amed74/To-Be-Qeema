<?php

namespace App\Models;

use App\Facades\Settings;
use Illuminate\Database\Eloquent\Model;

class GeneralSetting extends Model
{
    protected $fillable = ['setting_key', 'setting_value'];

    /**
     * Get the attributes that should be cast.
     *
     * @return array<string, string>
     */


    public const DEDUCTION_TYPE_PERCENTAGE = 'percentage';
    public const DEDUCTION_TYPE_FIXED = 'fixed';

    public const DEDUCTION_TYPES = [
        self::DEDUCTION_TYPE_PERCENTAGE,
        self::DEDUCTION_TYPE_FIXED,
    ];

    protected function casts(): array
    {
        return [
            'setting_value' => 'json',
        ];
    }

    protected static function booted(): void
    {
        static::saved(function () {
            Settings::flush();
        });

        static::deleted(function () {
            Settings::flush();
        });
    }
}
