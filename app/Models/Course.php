<?php

namespace App\Models;

use App\Traits\ImageAttributeTrait;
use App\Traits\AdminAcceptionTrait;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Support\Facades\Auth;
use Spatie\Translatable\HasTranslations;

class Course extends Model
{
    use HasFactory , HasTranslations , ImageAttributeTrait , AdminAcceptionTrait;

    protected $fillable = [
        'name',
        'description',
        'image',
        'type',
        'price',
        'url',
        'searchable_name',
        'searchable_description',
        'category_id',
        'level_id',
        'mentor_id',
        'accepted_at',
        'earning_points',
    ];

    public const TYPE_LIVE = 'live';
    public const TYPE_OFFLINE = 'offline';
    public const TYPE_RECORDED = 'recorded';

    public const TYPES = [
        self::TYPE_LIVE,
        self::TYPE_OFFLINE,
        self::TYPE_RECORDED,
    ];

    public $translatable = ['name', 'description'];

    protected $appends = ['image_url'];

    protected $hidden = ['searchable_name', 'searchable_description'];

    //===============================================

    public function category()
    {
        return $this->belongsTo(Category::class);
    }

    public function level()
    {
        return $this->belongsTo(Level::class);
    }

    public function mentor()
    {
        return $this->belongsTo(User::class, 'mentor_id', 'id');
    }

    public function users()
    {
        return $this->belongsToMany(User::class, 'course_user');
    }

    public function posts()
    {
        return $this->hasMany(Post::class);
    }

    public function scopeWithLiked(Builder $query , User $user){
        if (!$user) return $query;
        return $query->withExists('users as is_liked', function ($query) use ($user) {
            $query->where('course_user.user_id', $user->id);
        });
    }

    public function polls()
    {
        return $this->hasMany(Poll::class);
    }

    public function lessons()
    {
        return $this->hasMany(Lesson::class)->orderBy('order');
    }

}
