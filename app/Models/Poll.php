<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\Translatable\HasTranslations;

class Poll extends Model
{
    use HasFactory , HasTranslations;

    public array $translatable = ['content'];

    protected $fillable = [
        'course_id',
        'user_id',
        'content',
    ];

    //===============================================

    public function course()
    {
        return $this->belongsTo(Course::class);
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function options()
    {
        return $this->hasMany(PollOption::class);
    }
}
