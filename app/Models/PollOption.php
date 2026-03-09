<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\Translatable\HasTranslations;

class PollOption extends Model
{
    use HasFactory , HasTranslations;

    protected $fillable = [
        'poll_id',
        'content',
    ];

    protected $appends = ['count'];
    protected $withCount = ['users as count'];

    public array $translatable = ['content'];

    public function poll()
    {
        return $this->belongsTo(Poll::class);
    }

    public function users()
    {
        return $this->belongsToMany(User::class, 'poll_option_user');
    }

}
