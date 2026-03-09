<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PointTransactions extends Model
{
    use HasFactory;

    protected $fillable = [
        'user_id',
        'amount',
        'type',
    ];

    protected $casts = [
        'amount' => 'integer',
    ];

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public const TYPE_EARN = 'earn';
    public const TYPE_SPEND = 'spend';

    public const TYPES = [
        self::TYPE_EARN,
        self::TYPE_SPEND,
    ];
}
