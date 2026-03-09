<?php

namespace App\Services;

use App\Models\GeneralSetting;
use Illuminate\Support\Facades\Cache;

class Settings
{
    protected const CACHE_KEY = 'app_settings';

    /**
     * In-memory settings storage for the current request cycle.
     *
     * @var array<string, mixed>|null
     */
    protected ?array $settings = null;

    /**
     * Get all settings.
     *
     * @return array<string, mixed>
     */
    public function all(): array
    {
        return $this->loadSettings();
    }

    /**
     * Get a setting value by key.
     */
    public function get(string $key, mixed $default = null): mixed
    {
        $settings = $this->loadSettings();

        return $settings[$key] ?? $default;
    }

    /**
     * Set a setting value.
     */
    public function set(string $key, mixed $value): void
    {
        GeneralSetting::query()->updateOrCreate(
            ['setting_key' => $key],
            ['setting_value' => $value]
        );

        $this->flush();
    }

    /**
     * Set multiple settings at once.
     *
     * @param  array<string, mixed>  $settings
     */
    public function setMany(array $settings): void
    {
        foreach ($settings as $key => $value) {
            GeneralSetting::query()->updateOrCreate(
                ['setting_key' => $key],
                ['setting_value' => $value]
            );
        }

        $this->flush();
    }

    /**
     * Delete a setting by key.
     */
    public function delete(string $key): bool
    {
        $deleted = GeneralSetting::query()
            ->where('setting_key', $key)
            ->delete();

        if ($deleted) {
            $this->flush();
        }

        return $deleted > 0;
    }

    /**
     * Check if a setting exists.
     */
    public function has(string $key): bool
    {
        $settings = $this->loadSettings();

        return array_key_exists($key, $settings);
    }

    /**
     * Flush the settings cache and reset in-memory storage.
     */
    public function flush(): void
    {
        Cache::driver('file')->forget(self::CACHE_KEY);
        $this->settings = null;
    }

    /**
     * Load settings from cache or database.
     *
     * @return array<string, mixed>
     */
    protected function loadSettings(): array
    {
        if ($this->settings != null) {
            return $this->settings;
        }

        if (Cache::driver('file')->has(self::CACHE_KEY)) {
            $this->settings = Cache::driver('file')->get(self::CACHE_KEY);
            return $this->settings;
        }

        $this->settings = Cache::driver('file')->rememberForever(self::CACHE_KEY, function () {
            return GeneralSetting::query()
                ->pluck('setting_value', 'setting_key')
                ->toArray();
        });

        return $this->settings;
    }
}
