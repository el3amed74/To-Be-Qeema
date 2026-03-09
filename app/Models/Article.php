<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Spatie\Translatable\HasTranslations;
use App\Traits\ImageAttributeTrait;
use App\Traits\AdminAcceptionTrait;

class Article extends Model
{
    use HasFactory , HasTranslations , ImageAttributeTrait , AdminAcceptionTrait;

    protected $fillable = [
        'course_id',
        'user_id',
        'content',
        'title',
        'searchable_title',
        'searchable_content',
        'image',
        'is_published',
        'accepted_at',
        'earning_points',
    ];

    public array $translatable = ['content', 'title'];

    protected $casts = [
        'is_published' => 'boolean',
    ];

    public function course()
    {
        return $this->belongsTo(Course::class);
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function usersRead()
    {
        return $this->belongsToMany(User::class, 'article_read');
    }

    public function usersLiked()
    {
        return $this->belongsToMany(User::class, 'article_user');
    }

    public function scopePublished($query)
    {
        return $query->where('is_published', true);
    }


}
