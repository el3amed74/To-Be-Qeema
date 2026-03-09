<?php

namespace App\Repositories;

use App\Models\PollOption;

class PollOptionsRepository
{
    public function paginate($perPage = 10, $pollId = null)
    {
        return PollOption::when($pollId, function ($query) use ($pollId) {
            $query->where('poll_id', $pollId);
        })->with(['poll'])
        ->withCount('users')
        ->paginate($perPage);
    }

    public function all()
    {
        return PollOption::with(['poll'])->withCount('users')->get();
    }

    public function create(array $data)
    {
        return PollOption::create([
            'poll_id' => $data['poll_id'],
            'content' => [
                'en' => $data['content_en'],
                'ar' => $data['content_ar'],
            ],
        ]);
    }

    public function findById($id)
    {
        return PollOption::with(['poll', 'users'])->withCount('users')->findOrFail($id);
    }

    public function update(PollOption $pollOption, array $data)
    {
        return $pollOption->update([
            'content' => [
                'en' => $data['content_en'] ?? $pollOption->getTranslation('content', 'en'),
                'ar' => $data['content_ar'] ?? $pollOption->getTranslation('content', 'ar'),
            ],
        ]);
    }

    public function delete(PollOption $pollOption)
    {
        $pollOption->delete();

        return true;
    }

    public function getByPoll($pollId)
    {
        return PollOption::where('poll_id', $pollId)
            ->withCount('users')
            ->get();
    }

    public function vote($pollOptionId, $userId)
    {
        $pollOption = PollOption::findOrFail($pollOptionId);
        
        // Check if user already voted for any option in this poll
        $poll = $pollOption->poll;
        $hasVoted = PollOption::where('poll_id', $poll->id)
            ->whereHas('users', function ($query) use ($userId) {
                $query->where('user_id', $userId);
            })
            ->exists();

        if ($hasVoted) {
            return false; // User already voted
        }

        $pollOption->users()->attach($userId);

        return true;
    }

    public function removeVote($pollOptionId, $userId)
    {
        $pollOption = PollOption::findOrFail($pollOptionId);
        $pollOption->users()->detach($userId);

        return true;
    }

    public function hasUserVoted($pollId, $userId)
    {
        return PollOption::where('poll_id', $pollId)
            ->whereHas('users', function ($query) use ($userId) {
                $query->where('user_id', $userId);
            })
            ->exists();
    }

    public function getUserVote($pollId, $userId)
    {
        return PollOption::where('poll_id', $pollId)
            ->whereHas('users', function ($query) use ($userId) {
                $query->where('user_id', $userId);
            })
            ->first();
    }
}
