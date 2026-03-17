<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class ConsultationRequest extends Model
{
    use HasFactory;

    protected $fillable = [
        'user_id',
        'type',
        'trainning_type',
        'customer_needs',
        'company_needs',
        'company_name',
        'employees_num',
        'email',
        'phone_num',
        'time_to_call',
        'location',
        'status',
    ];

    /**
     * Get the user that owns the consultation request.
     */
    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class);
    }
}
