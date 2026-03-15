<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;
use App\Http\Requests\ConsultationCategoryRequest;
use App\Http\Resources\ConsultationCategoryResource;
use App\Services\ConsultationCategoryService;
use Illuminate\Http\Request;

class ConsultationCategoryController extends Controller
{
    protected $categoryService;

    public function __construct(ConsultationCategoryService $categoryService)
    {
        $this->categoryService = $categoryService;
    }

    public function index(Request $request)
    {
        $categories = $this->categoryService->index($request->per_page ?? 10, $request->search, ['subCategories']);

        return response()->json([
            'message' => __('Consultation categories fetched successfully.'),
            'categories' => [
                'data' => ConsultationCategoryResource::collection($categories),
                'links' => $categories->toArray()['links'] ?? null,
            ],
        ], 200);
    }

    public function store(ConsultationCategoryRequest $request)
    {
        $imagePath = null;
        if ($request->hasFile('image')) {
            $imagePath = $request->file('image')->store('consultations/categories', 'public');
        }
        $dto = $request->toDTO($imagePath);
        $category = $this->categoryService->create($dto);

        return response()->json([
            'message' => __('Consultation category created successfully.'),
            'category' => new ConsultationCategoryResource($category),
        ], 201);
    }

    public function show(string $id)
    {
        $category = $this->categoryService->findById($id, ['subCategories']);

        return response()->json([
            'message' => __('Consultation category fetched successfully.'),
            'category' => new ConsultationCategoryResource($category),
        ], 200);
    }

    public function update(ConsultationCategoryRequest $request, string $id)
    {
        $imagePath = null;
        if ($request->hasFile('image')) {
            $imagePath = $request->file('image')->store('consultations/categories', 'public');
        }
        $dto = $request->toDTO($imagePath);
        $category = $this->categoryService->update($id, $dto);

        return response()->json([
            'message' => __('Consultation category updated successfully.'),
            'category' => new ConsultationCategoryResource($category),
        ], 200);
    }

    public function destroy(string $id)
    {
        $this->categoryService->delete($id);

        return response()->json([
            'message' => __('Consultation category deleted successfully.'),
        ], 200);
    }
}
