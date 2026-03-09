<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MentorDetail extends Model
{
    use HasFactory;

    protected $fillable = [
        'user_id',
        'deduction_type',
        'deduction_value',
        'bank_name',
        'bank_account_number',
        'bank_account_name',
        'bank_account_iban',
        'bank_account_swift',
        'bank_account_routing_number',
        'bank_account_branch_code',
    ];

    protected $casts = [
        'deduction_type' => 'string',
        'deduction_value' => 'decimal:2',
        'bank_name' => 'string',
        'bank_account_number' => 'string',
        'bank_account_name' => 'string',
        'bank_account_iban' => 'string',
        'bank_account_swift' => 'string',
        'bank_account_routing_number' => 'string',
        'bank_account_branch_code' => 'string',
    ];

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public const DEDUCTION_TYPE_PERCENTAGE = 'percentage';
    public const DEDUCTION_TYPE_FIXED = 'fixed';

    public const DEDUCTION_TYPES = [
        self::DEDUCTION_TYPE_PERCENTAGE,
        self::DEDUCTION_TYPE_FIXED,
    ];


}
