<?php

namespace App\Traits;

use Illuminate\Database\Eloquent\Model;

trait AdminAcceptionTrait
{
    public function scopeAccepted($query)
    {
        return $query->whereNotNull('accepted_at');
    }

    public function scopeNotAccepted($query)
    {
        return $query->whereNull('accepted_at');
    }
}
