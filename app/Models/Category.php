<?php

namespace App\Models;

use App\Traits\ImageAttributeTrait;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\Translatable\HasTranslations;

class Category extends Model
{
    use HasFactory , HasTranslations , ImageAttributeTrait;

    protected $fillable = ['name', 'description', 'image', 'searchable_name', 'searchable_description', 'type_slug'];

    public $translatable = ['name', 'description'];

    protected $appends = ['image_url'];

    protected $hidden = ['searchable_name', 'searchable_description'];

    // ===============================================

    public function courses()
    {
        return $this->hasMany(Course::class);
    }
}
