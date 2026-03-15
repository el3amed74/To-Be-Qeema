<?php

namespace App\Models;

use App\Traits\ImageAttributeTrait;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\Translatable\HasTranslations;

class ConsultationSubCategory extends Model
{
    use HasFactory, HasTranslations, ImageAttributeTrait;

    protected $fillable = [
        'name',
        'description',
        'image',
        'searchable_name',
        'searchable_description',
        'consultation_category_id'
    ];

    public $translatable = ['name', 'description'];

    protected $appends = ['image_url'];

    protected $hidden = ['searchable_name', 'searchable_description'];

    // ===============================================

    public function category()
    {
        return $this->belongsTo(ConsultationCategory::class, 'consultation_category_id');
    }

    public function sessions()
    {
        return $this->hasMany(ConsultationSession::class);
    }
}
