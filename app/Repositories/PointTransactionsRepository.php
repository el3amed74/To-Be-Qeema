<?php

namespace App\Repositories;

use App\Models\PointTransactions;
use App\Models\User;
use Illuminate\Support\Facades\DB;

class PointTransactionsRepository
{
    public function paginate($perPage = 10, $userId = null, $type = null)
    {
        return PointTransactions::when($userId, function ($query) use ($userId) {
            $query->where('user_id', $userId);
        })->when($type, function ($query) use ($type) {
            $query->where('type', $type);
        })->with(['user'])
        ->latest()
        ->paginate($perPage);
    }

    public function all()
    {
        return PointTransactions::with(['user'])->latest()->get();
    }

    public function findById($id)
    {
        return PointTransactions::with(['user'])->findOrFail($id);
    }

    public function getByUser($userId, $perPage = 10, $type = null)
    {
        return PointTransactions::where('user_id', $userId)
            ->when($type, function ($query) use ($type) {
                $query->where('type', $type);
            })
            ->latest()
            ->paginate($perPage);
    }

    public function earnPoints($userId, $amount)
    {
        return DB::transaction(function () use ($userId, $amount) {
            $user = User::findOrFail($userId);
            $user->increment('points', $amount);

            $transaction = PointTransactions::create([
                'user_id' => $userId,
                'amount' => $amount,
                'type' => PointTransactions::TYPE_EARN,
            ]);

            return $transaction;
        });
    }

    public function spendPoints($userId, $amount)
    {
        return DB::transaction(function () use ($userId, $amount) {
            $user = User::findOrFail($userId);

            if ($user->points < $amount) {
                throw new \Exception('Insufficient points');
            }

            $user->decrement('points', $amount);

            $transaction = PointTransactions::create([
                'user_id' => $userId,
                'amount' => $amount,
                'type' => PointTransactions::TYPE_SPEND,
            ]);

            return $transaction;
        });
    }

    public function getEarnTransactions($userId, $perPage = 10)
    {
        return $this->getByUser($userId, $perPage, PointTransactions::TYPE_EARN);
    }

    public function getSpendTransactions($userId, $perPage = 10)
    {
        return $this->getByUser($userId, $perPage, PointTransactions::TYPE_SPEND);
    }

    public function getTotalEarned($userId)
    {
        return PointTransactions::where('user_id', $userId)
            ->where('type', PointTransactions::TYPE_EARN)
            ->sum('amount');
    }

    public function getTotalSpent($userId)
    {
        return PointTransactions::where('user_id', $userId)
            ->where('type', PointTransactions::TYPE_SPEND)
            ->sum('amount');
    }

    public function getBalance($userId)
    {
        $user = User::findOrFail($userId);
        return $user->points ?? 0;
    }

    public function hasPoints($userId, $amount)
    {
        $user = User::findOrFail($userId);
        return $user->points >= $amount;
    }

    public function getStatistics($userId)
    {
        $user = User::findOrFail($userId);

        return [
            'total_earned' => PointTransactions::where('user_id', $userId)
                ->where('type', PointTransactions::TYPE_EARN)
                ->sum('amount'),
            'total_spent' => PointTransactions::where('user_id', $userId)
                ->where('type', PointTransactions::TYPE_SPEND)
                ->sum('amount'),
            'current_balance' => $user->points ?? 0,
            'transaction_count' => PointTransactions::where('user_id', $userId)->count(),
        ];
    }

    public function getRecentTransactions($userId, $limit = 5)
    {
        return PointTransactions::where('user_id', $userId)
            ->latest()
            ->limit($limit)
            ->get();
    }

    public function countByType($userId, $type)
    {
        return PointTransactions::where('user_id', $userId)
            ->where('type', $type)
            ->count();
    }

    public function transferPoints($fromUserId, $toUserId, $amount)
    {
        return DB::transaction(function () use ($fromUserId, $toUserId, $amount) {
            $this->spendPoints($fromUserId, $amount);
            $this->earnPoints($toUserId, $amount);

            return true;
        });
    }

    
}
