<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ConsultationReservation extends Model
{
    protected $fillable = [
        'user_id',
        'consultation_session_id',
        'phone_number',
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

    public function session()
    {
        return $this->belongsTo(ConsultationSession::class, 'consultation_session_id');
    }
}
