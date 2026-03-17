<?php

namespace App\Services;

use App\Repositories\WalletRepository;
use App\Models\Wallet;

class WalletService
{
    public function __construct(
        protected WalletRepository $repository
    ) {}

    /**
     * Get all wallets with pagination for admin.
     */
    public function getAllWallets(int $perPage = 15)
    {
        // There's no getAll in WalletRepository, so I'll use the model directly or add it if needed.
        // Actually, it's better to add it to repository for consistency.
        return Wallet::with('user')->latest()->paginate($perPage);
    }

    /**
     * Get wallet details with transactions.
     */
    public function getWalletDetails(int $id)
    {
        return Wallet::with(['user', 'transactions' => function($query) {
            $query->latest();
        }])->findOrFail($id);
    }
}
