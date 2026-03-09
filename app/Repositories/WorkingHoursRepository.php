<?php

namespace App\Repositories;

use App\Models\WorkingHour;

class WorkingHoursRepository
{
    public function paginate($perPage = 10, $workingDayId = null)
    {
        return WorkingHour::when($workingDayId, function ($query) use ($workingDayId) {
            $query->where('working_day_id', $workingDayId);
        })->with(['workingDay.user'])
        ->orderBy('start_time')
        ->paginate($perPage);
    }

    public function all()
    {
        return WorkingHour::with(['workingDay.user'])->orderBy('start_time')->get();
    }

    public function create(array $data)
    {
        return WorkingHour::create([
            'working_day_id' => $data['working_day_id'],
            'start_time' => $data['start_time'],
            'end_time' => $data['end_time'],
        ]);
    }

    public function findById($id)
    {
        return WorkingHour::with(['workingDay.user'])->findOrFail($id);
    }

    public function update(WorkingHour $workingHour, array $data)
    {
        return $workingHour->update([
            'start_time' => $data['start_time'] ?? $workingHour->start_time,
            'end_time' => $data['end_time'] ?? $workingHour->end_time,
        ]);
    }

    public function delete(WorkingHour $workingHour)
    {
        $workingHour->delete();

        return true;
    }

    public function getByWorkingDay($workingDayId)
    {
        return WorkingHour::where('working_day_id', $workingDayId)
            ->orderBy('start_time')
            ->get();
    }

    public function getByUser($userId)
    {
        return WorkingHour::whereHas('workingDay', function ($query) use ($userId) {
            $query->where('user_id', $userId);
        })->with(['workingDay'])
        ->orderBy('start_time')
        ->get();
    }

    public function getByUserAndDay($userId, $day)
    {
        return WorkingHour::whereHas('workingDay', function ($query) use ($userId, $day) {
            $query->where('user_id', $userId)
                ->where('day', $day);
        })->orderBy('start_time')
        ->get();
    }

    public function setHoursForDay($workingDayId, array $hours)
    {
        // Delete existing hours for this working day
        WorkingHour::where('working_day_id', $workingDayId)->delete();

        // Create new working hours
        $workingHours = [];
        foreach ($hours as $hour) {
            if (isset($hour['start_time']) && isset($hour['end_time'])) {
                $workingHours[] = WorkingHour::create([
                    'working_day_id' => $workingDayId,
                    'start_time' => $hour['start_time'],
                    'end_time' => $hour['end_time'],
                ]);
            }
        }

        return $workingHours;
    }

    public function hasOverlap($workingDayId, $startTime, $endTime, $excludeId = null)
    {
        return WorkingHour::where('working_day_id', $workingDayId)
            ->when($excludeId, function ($query) use ($excludeId) {
                $query->where('id', '!=', $excludeId);
            })
            ->where(function ($query) use ($startTime, $endTime) {
                $query->whereBetween('start_time', [$startTime, $endTime])
                    ->orWhereBetween('end_time', [$startTime, $endTime])
                    ->orWhere(function ($query) use ($startTime, $endTime) {
                        $query->where('start_time', '<=', $startTime)
                            ->where('end_time', '>=', $endTime);
                    });
            })
            ->exists();
    }

    public function isAvailable($userId, $day, $time)
    {
        return WorkingHour::whereHas('workingDay', function ($query) use ($userId, $day) {
            $query->where('user_id', $userId)
                ->where('day', $day);
        })->where('start_time', '<=', $time)
        ->where('end_time', '>=', $time)
        ->exists();
    }

    public function getTotalWorkingHours($userId, $day = null)
    {
        $query = WorkingHour::whereHas('workingDay', function ($query) use ($userId, $day) {
            $query->where('user_id', $userId);
            if ($day) {
                $query->where('day', $day);
            }
        });

        $hours = $query->get();
        $totalMinutes = 0;

        foreach ($hours as $hour) {
            $start = \Carbon\Carbon::parse($hour->start_time);
            $end = \Carbon\Carbon::parse($hour->end_time);
            $totalMinutes += $start->diffInMinutes($end);
        }

        return round($totalMinutes / 60, 2); // Return hours as decimal
    }
}
