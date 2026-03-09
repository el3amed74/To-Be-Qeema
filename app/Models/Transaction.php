<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Transaction extends Model
{
    use HasFactory;

    protected $fillable = [
        'wallet_id',
        'amount',
        'type',
    ];

    public const TYPE_DEPOSIT = 'deposit';
    public const TYPE_WITHDRAW = 'withdrawal';

    public const TYPES = [
        self::TYPE_DEPOSIT,
        self::TYPE_WITHDRAW,
    ];

    protected $casts = [
        'amount' => 'decimal:2',
    ];

    public function wallet()
    {
        return $this->belongsTo(Wallet::class);
    }
}
