<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Illuminate\Support\Str;
use Laravel\Fortify\TwoFactorAuthenticatable;
use Laravel\Sanctum\HasApiTokens;
use Spatie\Permission\Traits\HasRoles;

class User extends Authenticatable
{
    /** @use HasFactory<\Database\Factories\UserFactory> */
    use HasFactory, Notifiable , HasRoles , HasApiTokens;

    /**
     * The attributes that are mass assignable.
     *
     * @var list<string>
     */
    protected $fillable = [
        'name',
        'email',
        'phone_number',
        'password',
        'fcm_token',
        'points',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var list<string>
     */
    protected $hidden = [
        'password',
        'remember_token',
        'fcm_token',
    ];

    /**
     * Get the attributes that should be cast.
     *
     * @return array<string, string>
     */
    protected function casts(): array
    {
        return [
            'email_verified_at' => 'datetime',
            'password' => 'hashed',
        ];
    }

    /**
     * Get the user's initials
     */
    public function initials(): string
    {
        return Str::of($this->name)
            ->explode(' ')
            ->take(2)
            ->map(fn ($word) => Str::substr($word, 0, 1))
            ->implode('');
    }

    protected static function booted()
    {
        static::created(function (User $user) {
            $user->wallet()->create();
        });
    }

    //===============================================

    /**
     * @deprecated Use mentoringCourses() instead.
     */
    public function mentoredCourses()
    {
        return $this->hasMany(Course::class, 'mentor_id', 'id');
    }

    public function mentoringCourses()
    {
        return $this->belongsToMany(Course::class, 'course_mentor')->withPivot('is_primary')->withTimestamps();
    }

    public function courses()
    {
        return $this->belongsToMany(Course::class, 'course_user');
    }

    public function posts()
    {
        return $this->hasMany(Post::class);
    }

    public function comments()
    {
        return $this->hasMany(Comment::class);
    }

    public function likedPosts()
    {
        return $this->belongsToMany(Post::class, 'post_user');
    }

    public function pollsCreated()
    {
        return $this->hasMany(Poll::class);
    }

    public function articles()
    {
        return $this->hasMany(Article::class);
    }

    public function articlesRead()
    {
        return $this->belongsToMany(Article::class, 'article_read');
    }

    public function articlesLiked()
    {
        return $this->belongsToMany(Article::class, 'article_user');
    }

    public function wallet()
    {
        return $this->hasOne(Wallet::class);
    }

    public function lessons()
    {
        return $this->belongsToMany(Lesson::class, 'lesson_user')
            ->withPivot(['is_completed', 'progress', 'watch_time', 'started_at', 'completed_at'])
            ->withTimestamps();
    }

    public function mentorDetail()
    {
        return $this->hasOne(MentorDetail::class);
    }
}
