<?php

namespace App\Facades;

use App\Services\Settings as SettingsService;
use Illuminate\Support\Facades\Facade;

/**
 * @method static array all()
 * @method static mixed get(string $key, mixed $default = null)
 * @method static void set(string $key, mixed $value)
 * @method static void setMany(array $settings)
 * @method static bool delete(string $key)
 * @method static bool has(string $key)
 * @method static void flush()
 *
 * @see \App\Services\Settings
 */
class Settings extends Facade
{
    protected static function getFacadeAccessor(): string
    {
        return SettingsService::class;
    }
}
