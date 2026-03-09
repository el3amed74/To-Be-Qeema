<?php

namespace App\Helpers;

use App\Models\Course;

class CourseHelper
{
    public static function isRecorded(Course $course)
    {
        return $course->type == Course::TYPE_RECORDED;
    }

    public static function isOffline(Course $course)
    {
        return $course->type == Course::TYPE_OFFLINE;
    }

    public static function isLive(Course $course)
    {
        return $course->type == Course::TYPE_LIVE;
    }

    public static function isSupported(Course $course)
    {
        return self::isRecorded($course) || self::isOffline($course) || self::isLive($course);
    }

    public static function isNotSupported(Course $course)
    {
        return !self::isSupported($course);
    }
}
