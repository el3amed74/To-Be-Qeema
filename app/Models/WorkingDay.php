<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Casts\Attribute;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class WorkingDay extends Model
{
    use HasFactory;

    protected $fillable = ['user_id', 'day'];

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function workingHours()
    {
        return $this->hasMany(WorkingHour::class);
    }

    public function day() : Attribute
    {
        $locale = app()->getLocale();

        $days = [
            'monday' => __('monday'),
            'tuesday' => __('tuesday'),
            'wednesday' => __('wednesday'),
            'thursday' => __('thursday'),
            'friday' => __('friday'),
            'saturday' => __('saturday'),
            'sunday' => __('sunday'),
        ];

        return Attribute::make(
            get: fn ($value) => $days[$locale][$value] ?? $value,
        );
    }
}
