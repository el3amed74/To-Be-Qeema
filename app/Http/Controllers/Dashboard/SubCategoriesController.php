<?php

namespace App\Http\Controllers\Dashboard;

use App\DTOs\SubCategoryDTO;
use App\Http\Controllers\Controller;
use App\Http\Requests\SubCategoriesRequest;
use App\Http\Resources\SubCategoryResource;
use App\Services\SubCategoryService;
use Illuminate\Http\Request;

class SubCategoriesController extends Controller
{
    protected $subCategoryService;

    public function __construct(SubCategoryService $subCategoryService)
    {
        $this->subCategoryService = $subCategoryService;
    }

    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $request->validate([
            'search' => 'nullable|string|max:255',
            'category_id' => 'nullable|exists:categories,id',
        ]);

        $subCategories = $this->subCategoryService->index(
            $request->per_page ?? 10, 
            $request->search,
            ['category']
        );

        return response()->json([
            'message' => __('SubCategories fetched successfully.'),
            'sub_categories' => [
                'data' => SubCategoryResource::collection($subCategories),
                'links' => $subCategories->toArray()['links'] ?? null,
            ],
        ], 200);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(SubCategoriesRequest $request)
    {
        $imagePath = null;
        if ($request->hasFile('image')) {
            $imagePath = $request->file('image')->store('sub_categories', 'public');
        }

        $dto = $request->toDTO($imagePath);
        $subCategory = $this->subCategoryService->createSubCategory($dto);

        return response()->json([
            'message' => __('SubCategory created successfully.'),
            'sub_category' => new SubCategoryResource($subCategory),
        ], 201);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $subCategory = $this->subCategoryService->showSubCategory($id, ['category', 'courses']);

        return response()->json([
            'message' => __('SubCategory fetched successfully.'),
            'sub_category' => new SubCategoryResource($subCategory),
        ], 200);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(SubCategoriesRequest $request, string $id)
    {
        $imagePath = null;
        if ($request->hasFile('image')) {
            $imagePath = $request->file('image')->store('sub_categories', 'public');
        }

        $dto = $request->toDTO($imagePath);
        $this->subCategoryService->updateSubCategory($id, $dto);

        return response()->json([
            'message' => __('SubCategory updated successfully.'),
        ], 200);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $this->subCategoryService->deleteSubCategory($id);

        return response()->json([
            'message' => __('SubCategory deleted successfully.'),
        ], 200);
    }
}
