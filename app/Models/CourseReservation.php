<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
class CourseReservation extends Model
{
    protected $fillable = [
        'user_id',
        'course_id',
        'mentor_id',
        'phone_number',
        'job_title',
        'human_type',
        'location',
        'date',
        'time',
        'payment_gateway',
        'payment_id',
        'amount',
        'status',
    ];

    public function student()
    {
        return $this->belongsTo(User::class, 'user_id');
    }

    public function course()
    {
        return $this->belongsTo(Course::class);
    }

    public function mentor()
    {
        return $this->belongsTo(User::class, 'mentor_id');
    }
}