<?php

namespace App\Repositories;

use App\Models\Transaction;
use App\Models\Wallet;

class TransactionsRepository
{
    public function paginate($perPage = 10, $walletId = null, $type = null)
    {
        return Transaction::when($walletId, function ($query) use ($walletId) {
            $query->where('wallet_id', $walletId);
        })->when($type, function ($query) use ($type) {
            $query->where('type', $type);
        })->with(['wallet.user'])
        ->latest()
        ->paginate($perPage);
    }

    public function all()
    {
        return Transaction::with(['wallet.user'])->latest()->get();
    }

    public function findById($id)
    {
        return Transaction::with(['wallet.user'])->findOrFail($id);
    }

    public function getByWallet($walletId, $perPage = 10, $type = null)
    {
        return Transaction::where('wallet_id', $walletId)
            ->when($type, function ($query) use ($type) {
                $query->where('type', $type);
            })
            ->latest()
            ->paginate($perPage);
    }

    public function getByUser($userId, $perPage = 10, $type = null)
    {
        return Transaction::whereHas('wallet', function ($query) use ($userId) {
            $query->where('user_id', $userId);
        })->when($type, function ($query) use ($type) {
            $query->where('type', $type);
        })->with(['wallet'])
        ->latest()
        ->paginate($perPage);
    }

    public function getDeposits($userId, $perPage = 10)
    {
        return $this->getByUser($userId, $perPage, Transaction::TYPE_DEPOSIT);
    }

    public function getWithdrawals($userId, $perPage = 10)
    {
        return $this->getByUser($userId, $perPage, Transaction::TYPE_WITHDRAW);
    }

    public function getTotalDeposits($userId)
    {
        $wallet = Wallet::where('user_id', $userId)->first();

        if (!$wallet) {
            return 0;
        }

        return Transaction::where('wallet_id', $wallet->id)
            ->where('type', Transaction::TYPE_DEPOSIT)
            ->sum('amount');
    }

    public function getTotalWithdrawals($userId)
    {
        $wallet = Wallet::where('user_id', $userId)->first();

        if (!$wallet) {
            return 0;
        }

        return Transaction::where('wallet_id', $wallet->id)
            ->where('type', Transaction::TYPE_WITHDRAW)
            ->sum('amount');
    }

    public function getStatistics($userId)
    {
        $wallet = Wallet::where('user_id', $userId)->first();

        if (!$wallet) {
            return [
                'total_deposits' => 0,
                'total_withdrawals' => 0,
                'transaction_count' => 0,
                'current_balance' => 0,
            ];
        }

        return [
            'total_deposits' => Transaction::where('wallet_id', $wallet->id)
                ->where('type', Transaction::TYPE_DEPOSIT)
                ->sum('amount'),
            'total_withdrawals' => Transaction::where('wallet_id', $wallet->id)
                ->where('type', Transaction::TYPE_WITHDRAW)
                ->sum('amount'),
            'transaction_count' => Transaction::where('wallet_id', $wallet->id)->count(),
            'current_balance' => $wallet->balance,
        ];
    }

    public function getRecentTransactions($userId, $limit = 5)
    {
        $wallet = Wallet::where('user_id', $userId)->first();

        if (!$wallet) {
            return collect([]);
        }

        return Transaction::where('wallet_id', $wallet->id)
            ->latest()
            ->limit($limit)
            ->get();
    }

    public function countByType($userId, $type)
    {
        $wallet = Wallet::where('user_id', $userId)->first();

        if (!$wallet) {
            return 0;
        }

        return Transaction::where('wallet_id', $wallet->id)
            ->where('type', $type)
            ->count();
    }
}
