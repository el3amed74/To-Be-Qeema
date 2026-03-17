<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;
use App\Http\Resources\WalletResource;
use App\Services\WalletService;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;

class WalletController extends Controller
{
    public function __construct(
        protected WalletService $service
    ) {}

    /**
     * Display a listing of wallets.
     */
    public function index(Request $request): JsonResponse
    {
        $perPage = $request->get('per_page', 15);
        $wallets = $this->service->getAllWallets($perPage);

        return response()->json([
            'data' => WalletResource::collection($wallets),
            'meta' => [
                'current_page' => $wallets->currentPage(),
                'last_page' => $wallets->lastPage(),
                'per_page' => $wallets->perPage(),
                'total' => $wallets->total(),
            ],
        ]);
    }

    /**
     * Display the specified wallet.
     */
    public function show(int $id): JsonResponse
    {
        $wallet = $this->service->getWalletDetails($id);

        return response()->json([
            'data' => new WalletResource($wallet->load('transactions')),
        ]);
    }
}
