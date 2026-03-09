<?php

namespace App\Repositories;

use App\Models\Transaction;
use App\Models\Wallet;
use Illuminate\Support\Facades\DB;

class WalletRepository
{
    public function findByUserId($userId)
    {
        return Wallet::where('user_id', $userId)->first();
    }

    public function findOrCreateByUserId($userId)
    {
        return Wallet::firstOrCreate(
            ['user_id' => $userId],
            ['balance' => 0.00]
        );
    }

    public function getBalance($userId)
    {
        $wallet = $this->findByUserId($userId);

        return $wallet ? $wallet->balance : 0.00;
    }

    public function deposit($userId, $amount)
    {
        return DB::transaction(function () use ($userId, $amount) {
            $wallet = $this->findOrCreateByUserId($userId);

            $wallet->increment('balance', $amount);

            $transaction = $wallet->transactions()->create([
                'amount' => $amount,
                'type' => Transaction::TYPE_DEPOSIT,
            ]);

            return $transaction;
        });
    }

    public function withdraw($userId, $amount)
    {
        return DB::transaction(function () use ($userId, $amount) {
            $wallet = $this->findByUserId($userId);

            if (!$wallet || $wallet->balance < $amount) {
                throw new \Exception('Insufficient balance');
            }

            $wallet->decrement('balance', $amount);

            $transaction = $wallet->transactions()->create([
                'amount' => $amount,
                'type' => Transaction::TYPE_WITHDRAW,
            ]);

            return $transaction;
        });
    }

    public function transfer($fromUserId, $toUserId, $amount)
    {
        return DB::transaction(function () use ($fromUserId, $toUserId, $amount) {
            $this->withdraw($fromUserId, $amount);
            $this->deposit($toUserId, $amount);

            return true;
        });
    }

    public function getTransactions($userId, $perPage = 10, $type = null)
    {
        $wallet = $this->findByUserId($userId);

        if (!$wallet) {
            return collect([]);
        }

        return $wallet->transactions()
            ->when($type, function ($query) use ($type) {
                $query->where('type', $type);
            })
            ->latest()
            ->paginate($perPage);
    }

    public function getTransactionHistory($userId, $perPage = 10)
    {
        return $this->getTransactions($userId, $perPage);
    }

    public function hasBalance($userId, $amount)
    {
        $wallet = $this->findByUserId($userId);

        return $wallet && $wallet->balance >= $amount;
    }

    public function setBalance($userId, $amount)
    {
        $wallet = $this->findOrCreateByUserId($userId);

        return $wallet->update(['balance' => $amount]);
    }
}
