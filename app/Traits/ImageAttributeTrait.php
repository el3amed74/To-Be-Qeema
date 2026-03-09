<?php

namespace App\Traits;

trait ImageAttributeTrait
{
    public function getImageUrlAttribute()
    {
        return $this->image ? asset('storage/' . $this->image) : null;
    }
}
