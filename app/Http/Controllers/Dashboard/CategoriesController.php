<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;
use App\Http\Requests\CategoriesRequest;
use App\Http\Resources\CategoryResource;
use App\Services\CategoryService;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class CategoriesController extends Controller
{
    protected $categoryService;

    public function __construct(CategoryService $categoryService)
    {
        $this->categoryService = $categoryService;
    }

    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $request->validate([
            'search' => 'nullable|string|max:255',
        ]);

        $categories = $this->categoryService->index($request->per_page ?? 10, $request->search, ['subCategories.courses']);

        return response()->json([
            'message' => __('Categories fetched successfully.'),
            'categories' => [
                'data' => CategoryResource::collection($categories),
                'links' => $categories->toArray()['links'] ?? null,
            ],
        ], 200);

    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(CategoriesRequest $request)
    {
        $data = $request->all();
        $image = null;
        if(isset($request->image) && $request->image) {
            $image = $request->file('image')->store('categories', 'public');
            $data['image'] = $image;
        }
        $category = $this->categoryService->createCategory($data);

        return response()->json([
            'message' => __('Category created successfully.'),
            'category' => new CategoryResource($category),
        ], 201);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $category = $this->categoryService->showCategory($id, ['subCategories.courses']);

        return response()->json([
            'message' => __('Category fetched successfully.'),
            'category' => new CategoryResource($category),
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
            $image = $request->file('image')->store('categories', 'public');
            $data['image'] = $image;
        }
        $category = $this->categoryService->updateCategory($id, $data);

        return response()->json([
            'message' => __('Category updated successfully.'),
        ], 200);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $category = $this->categoryService->deleteCategory($id);

        return response()->json([
            'message' => __('Category deleted successfully.'),
        ], 200);
    }
}
