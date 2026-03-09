<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;
use App\Http\Requests\LevelsRequest;
use App\Http\Resources\LevelResource;
use App\Services\LevelsService;
use Illuminate\Http\Request;

class LevelsController extends Controller
{
    public LevelsService $levelsService;

    public function __construct(LevelsService $levelsService)
    {
        $this->levelsService = $levelsService;
    }

    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $request->validate([
            'search' => 'nullable|string|max:255',
        ]);

        $levels = $this->levelsService->index($request->per_page ?? 10, $request->search);

        return response()->json([
            'message' => __('Levels fetched successfully.'),
            'levels' => [
                'data' => LevelResource::collection($levels),
                'links' => $levels->toArray()['links'] ?? null,
            ],
        ], 200);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(LevelsRequest $request)
    {
        $data = $request->all();
        $image = null;
        if(isset($data['image']) && $data['image']) {
            $image = $data['image']->store('levels', 'public');
            $data['image'] = $image;
        }

        $level = $this->levelsService->create($data);

        return response()->json([
            'message' => __('Level created successfully.'),
            'level' => new LevelResource($level),
        ], 201);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $level = $this->levelsService->showLevel($id);

        return response()->json([
            'message' => __('Level fetched successfully.'),
            'level' => new LevelResource($level),
        ], 200);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $data = $request->all();
        $image = null;
        if(isset($data['image']) && $data['image']) {
            $image = $data['image']->store('levels', 'public');
            $data['image'] = $image;
        }
        $level = $this->levelsService->update($id, $data);

        return response()->json([
            'message' => __('Level updated successfully.'),
        ], 200);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $level = $this->levelsService->delete($id);

        return response()->json([
            'message' => __('Level deleted successfully.'),
        ], 200);
    }
}
