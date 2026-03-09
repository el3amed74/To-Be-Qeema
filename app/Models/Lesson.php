<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\Translatable\HasTranslations;

class Lesson extends Model
{
    use HasFactory, HasTranslations;

    protected $fillable = [
        'course_id',
        'title',
        'content',
        'searchable_title',
        'searchable_content',
        'video_url',
        'duration',
        'order',
    ];

    public array $translatable = ['title', 'content'];

    protected $hidden = ['searchable_title', 'searchable_content'];

    protected function casts(): array
    {
        return [
            'duration' => 'integer',
            'order' => 'integer',
        ];
    }

    public function scopeOrdered($query)
    {
        return $query->orderBy('order', 'asc');
    }

    public function course()
    {
        return $this->belongsTo(Course::class);
    }

    public function users()
    {
        return $this->belongsToMany(User::class, 'lesson_user')
            ->withPivot(['is_completed', 'progress', 'watch_time', 'started_at', 'completed_at'])
            ->withTimestamps();
    }
}
