<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\ProfileResource;
use App\Services\ProfileService;
use Illuminate\Http\Request;

class ProfileController extends Controller
{
    public function __construct(
        protected ProfileService $profileService
    ) {}

    /**
     * Display the authenticated user's profile.
     */
    public function show(Request $request)
    {
        $profileData = $this->profileService->getProfileData($request->user()->id);

        return new ProfileResource($profileData);
    }
}
