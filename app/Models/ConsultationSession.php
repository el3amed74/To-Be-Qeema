<?php

namespace App\Models;

use App\Traits\ImageAttributeTrait;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\Translatable\HasTranslations;

class ConsultationSession extends Model
{
    use HasFactory, HasTranslations, ImageAttributeTrait;

    protected $fillable = [
        'name',
        'description',
        'content',
        'image',
        'video_url',
        'price',
        'duration',
        'type',
        'earning_points',
        'consultation_sub_category_id',
        'mentor_id',
        'searchable_name',
        'searchable_description',
    ];

    public $translatable = ['name', 'description', 'content'];

    protected $appends = ['image_url'];

    protected $hidden = ['searchable_name', 'searchable_description'];

    //===============================================

    public function subCategory()
    {
        return $this->belongsTo(ConsultationSubCategory::class, 'consultation_sub_category_id');
    }

    public function mentor()
    {
        return $this->belongsTo(User::class, 'mentor_id');
    }

    public function users()
    {
        return $this->belongsToMany(User::class, 'consultation_session_user');
    }
}
