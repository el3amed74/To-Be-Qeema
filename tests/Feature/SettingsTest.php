<?php

use App\Facades\Settings;
use App\Models\GeneralSetting;
use Illuminate\Support\Facades\Cache;

uses()->group('settings');

beforeEach(function () {
    GeneralSetting::query()->delete();
    Settings::flush();
});

afterEach(function () {
    GeneralSetting::query()->delete();
    Settings::flush();
});

test('can get a setting value', function () {
    GeneralSetting::create([
        'setting_key' => 'site_name',
        'setting_value' => 'My Website',
    ]);

    expect(Settings::get('site_name'))->toBe('My Website');
});

test('returns default value when setting does not exist', function () {
    expect(Settings::get('non_existent', 'default'))->toBe('default');
    expect(Settings::get('non_existent'))->toBeNull();
});

test('can set a setting value', function () {
    Settings::set('app_name', 'Test App');

    expect(Settings::get('app_name'))->toBe('Test App');
    expect(GeneralSetting::where('setting_key', 'app_name')->exists())->toBeTrue();
});

test('can update an existing setting', function () {
    Settings::set('theme', 'light');
    Settings::set('theme', 'dark');

    expect(Settings::get('theme'))->toBe('dark');
    expect(GeneralSetting::where('setting_key', 'theme')->count())->toBe(1);
});

test('can set multiple settings at once', function () {
    Settings::setMany([
        'key1' => 'value1',
        'key2' => 'value2',
        'key3' => 'value3',
    ]);

    expect(Settings::get('key1'))->toBe('value1');
    expect(Settings::get('key2'))->toBe('value2');
    expect(Settings::get('key3'))->toBe('value3');
});

test('can delete a setting', function () {
    Settings::set('to_delete', 'some value');

    expect(Settings::delete('to_delete'))->toBeTrue();
    expect(Settings::has('to_delete'))->toBeFalse();
});

test('delete returns false for non-existent setting', function () {
    expect(Settings::delete('non_existent'))->toBeFalse();
});

test('can check if a setting exists', function () {
    Settings::set('exists', 'yes');

    expect(Settings::has('exists'))->toBeTrue();
    expect(Settings::has('does_not_exist'))->toBeFalse();
});

test('can get all settings', function () {
    Settings::setMany([
        'setting_a' => 'value_a',
        'setting_b' => 'value_b',
    ]);

    $all = Settings::all();

    expect($all)->toHaveKey('setting_a', 'value_a');
    expect($all)->toHaveKey('setting_b', 'value_b');
});

test('settings are cached', function () {
    Settings::set('cached_setting', 'cached_value');

    // After setting, the cache should be refreshed on next load
    Settings::flush();
    Settings::get('cached_setting');

    // Verify settings are loaded from cache on subsequent calls
    expect(Settings::get('cached_setting'))->toBe('cached_value');
});

test('cache is flushed when setting is created via model', function () {
    Settings::set('initial', 'value');
    Settings::all(); // Load into memory

    GeneralSetting::create([
        'setting_key' => 'new_setting',
        'setting_value' => 'new_value',
    ]);

    expect(Settings::get('new_setting'))->toBe('new_value');
});

test('cache is flushed when setting is updated via model', function () {
    Settings::set('update_me', 'old_value');

    $setting = GeneralSetting::where('setting_key', 'update_me')->first();
    $setting->setting_value = 'new_value';
    $setting->save();

    expect(Settings::get('update_me'))->toBe('new_value');
});

test('cache is flushed when setting is deleted via model', function () {
    Settings::set('delete_me', 'value');
    Settings::all(); // Load into memory

    GeneralSetting::where('setting_key', 'delete_me')->first()->delete();

    expect(Settings::has('delete_me'))->toBeFalse();
});

test('settings can store json values', function () {
    $complexValue = ['nested' => ['key' => 'value'], 'array' => [1, 2, 3]];

    Settings::set('complex', $complexValue);

    expect(Settings::get('complex'))->toEqual($complexValue);
});

test('settings are loaded only once per request', function () {
    Settings::setMany([
        'test1' => 'value1',
        'test2' => 'value2',
    ]);

    // Reset query log
    DB::enableQueryLog();
    DB::flushQueryLog();

    // Multiple reads should only query once
    Settings::get('test1');
    Settings::get('test2');
    Settings::all();
    Settings::has('test1');

    $queries = collect(DB::getQueryLog())->filter(function ($query) {
        return str_contains($query['query'], 'general_settings');
    });

    expect($queries)->toHaveCount(1);

    DB::disableQueryLog();
});
