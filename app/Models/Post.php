<?php

namespace App\Models;

use App\Traits\ImageAttributeTrait;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Builder;
use Spatie\Translatable\HasTranslations;

class Post extends Model
{
    use HasFactory , HasTranslations , ImageAttributeTrait;

    protected $fillable = [
        'course_id',
        'user_id',
        'content',
        'type',
    ];

    public const TYPE_TEXT = 'text';
    public const TYPE_IMAGE = 'image';
    public const TYPE_VIDEO = 'video';

    public const TYPES = [
        self::TYPE_TEXT,
        self::TYPE_IMAGE,
        self::TYPE_VIDEO,
    ];
    
    public array $translatable = ['content'];
    //===============================================

    public function course()
    {
        return $this->belongsTo(Course::class);
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function comments()
    {
        return $this->hasMany(Comment::class);
    }

    public function users()
    {
        return $this->belongsToMany(User::class, 'post_user');
    }

    public function scopeWithLiked(Builder $query , $user = null){
        if (!$user) return $query;
        return $query->withExists('users as is_liked', function ($query) use ($user) {
            $query->where('post_user.user_id', $user->id);
        });
    }
}
