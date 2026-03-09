<?php

namespace App\Helpers;

class UserHelper
{
    public static function getSingleRole($roles)
    {
        return $roles->first()->name;
    }
}
