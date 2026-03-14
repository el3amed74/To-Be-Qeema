<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\Api\WriterDetailRequest;
use App\Http\Resources\WriterDetailResource;
use App\Services\UserService;

class WriterController extends Controller
{
    public function __construct(
        protected UserService $userService
    ) {
    }

    /**
     * Display details about a specific article writer.
     */
    public function show(WriterDetailRequest $request, int $id): WriterDetailResource
    {
        $dto = $request->toDTO();
        $writer = $this->userService->getWriterDetails($dto);

        return new WriterDetailResource($writer);
    }
}
