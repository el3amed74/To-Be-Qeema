<?php

namespace App\Repositories;

use App\Models\WorkingDay;

class WorkingDaysRepository
{
    public const DAYS = [
        'monday',
        'tuesday',
        'wednesday',
        'thursday',
        'friday',
        'saturday',
        'sunday',
    ];

    public function paginate($perPage = 10, $userId = null)
    {
        return WorkingDay::when($userId, function ($query) use ($userId) {
            $query->where('user_id', $userId);
        })->with(['user', 'workingHours'])
        ->paginate($perPage);
    }

    public function all()
    {
        return WorkingDay::with(['user', 'workingHours'])->get();
    }

    public function create(array $data)
    {
        return WorkingDay::create([
            'user_id' => $data['user_id'],
            'day' => $data['day'],
        ]);
    }

    public function getByUser($userId)
    {
        return WorkingDay::where('user_id', $userId)
            ->with(['workingHours'])
            ->orderByRaw("FIELD(day, 'monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday', 'sunday')")
            ->get();
    }

    public function getByUserAndDay($userId, $day)
    {
        return WorkingDay::where('user_id', $userId)
            ->where('day', $day)
            ->with(['workingHours'])
            ->first();
    }

    public function createOrGet($userId, $day)
    {
        return WorkingDay::firstOrCreate(
            ['user_id' => $userId, 'day' => $day]
        );
    }

    public function setWorkingDays($userId, array $days)
    {
        // Delete all existing working days for the user
        WorkingDay::where('user_id', $userId)->delete();

        // Create new working days
        $workingDays = [];
        foreach ($days as $day) {
            if (in_array($day, self::DAYS)) {
                $workingDays[] = WorkingDay::create([
                    'user_id' => $userId,
                    'day' => $day,
                ]);
            }
        }

        return $workingDays;
    }

    public function hasWorkingDay($userId, $day)
    {
        return WorkingDay::where('user_id', $userId)
            ->where('day', $day)
            ->exists();
    }

    public function removeWorkingDay($userId, $day)
    {
        return WorkingDay::where('user_id', $userId)
            ->where('day', $day)
            ->delete();
    }

    public function getAvailableDays()
    {
        return self::DAYS;
    }
}
