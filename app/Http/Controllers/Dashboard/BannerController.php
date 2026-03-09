<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;
use App\Http\Requests\BannersRequest;
use App\Http\Resources\BannerResource;
use App\Services\BannerService;
use Illuminate\Http\Request;

class BannerController extends Controller
{
    protected $bannerService;

    public function __construct(BannerService $bannerService)
    {
        $this->bannerService = $bannerService;
    }

    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $request->validate([
            'search' => 'nullable|string|max:255',
        ]);

        $banners = $this->bannerService->index($request->per_page ?? 10, $request->search);

        return response()->json([
            'message' => __('Banners fetched successfully.'),
            'banners' => [
                'data' => BannerResource::collection($banners),
                'links' => $banners->toArray()['links'] ?? null,
            ],
        ], 200);

    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(BannersRequest $request)
    {
        $data = $request->all();
        $image = null;
        if (isset($request->image) && $request->image) {
            $image = $request->file('image')->store('banners', 'public');
            $data['image'] = $image;
        }
        $banner = $this->bannerService->createBanner($data);

        return response()->json([
            'message' => __('Banner created successfully.'),
            'banner' => new BannerResource($banner),
        ], 201);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $banner = $this->bannerService->showBanner($id);

        return response()->json([
            'message' => __('Banner fetched successfully.'),
            'banner' => new BannerResource($banner),
        ], 200);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $data = $request->all();

        $this->bannerService->updateBanner($id, $data);

        return response()->json([
            'message' => __('Banner updated successfully.'),
        ], 200);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $this->bannerService->deleteBanner($id);

        return response()->json([
            'message' => __('Banner deleted successfully.'),
        ], 200);
    }

    public function updateImage(Request $request, int $id)
    {
        try {
            $data = $request->validate(['image' => 'required|file']);
            $this->bannerService->updateImg($id, $data);

            return response()->json([
                'message' => __('Banner image updated successfully.'),
            ]);
        } catch (\Exception $exception) {
            return response()->json([
                'message' => __('Something went wrong while updating the image.'),
                'error' => $exception->getMessage(),
            ]);
        }
    }

}
