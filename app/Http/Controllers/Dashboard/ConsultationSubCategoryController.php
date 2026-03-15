<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;
use App\Http\Requests\ConsultationSubCategoryRequest;
use App\Http\Resources\ConsultationSubCategoryResource;
use App\Services\ConsultationSubCategoryService;
use Illuminate\Http\Request;

class ConsultationSubCategoryController extends Controller
{
    protected $subCategoryService;

    public function __construct(ConsultationSubCategoryService $subCategoryService)
    {
        $this->subCategoryService = $subCategoryService;
    }

    public function index(Request $request)
    {
        $subCategories = $this->subCategoryService->index(
            $request->per_page ?? 10,
            $request->search,
            $request->consultation_category_id,
            ['category']
        );

        return response()->json([
            'message' => __('Consultation sub-categories fetched successfully.'),
            'sub_categories' => [
                'data' => ConsultationSubCategoryResource::collection($subCategories),
                'links' => $subCategories->toArray()['links'] ?? null,
            ],
        ], 200);
    }

    public function store(ConsultationSubCategoryRequest $request)
    {
        $imagePath = null;
        if ($request->hasFile('image')) {
            $imagePath = $request->file('image')->store('consultations/sub_categories', 'public');
        }
        $dto = $request->toDTO($imagePath);
        $subCategory = $this->subCategoryService->create($dto);

        return response()->json([
            'message' => __('Consultation sub-category created successfully.'),
            'sub_category' => new ConsultationSubCategoryResource($subCategory),
        ], 201);
    }

    public function show(string $id)
    {
        $subCategory = $this->subCategoryService->findById($id, ['category', 'sessions']);

        return response()->json([
            'message' => __('Consultation sub-category fetched successfully.'),
            'sub_category' => new ConsultationSubCategoryResource($subCategory),
        ], 200);
    }

    public function update(ConsultationSubCategoryRequest $request, string $id)
    {
        $imagePath = null;
        if ($request->hasFile('image')) {
            $imagePath = $request->file('image')->store('consultations/sub_categories', 'public');
        }
        $dto = $request->toDTO($imagePath);
        $subCategory = $this->subCategoryService->update($id, $dto);

        return response()->json([
            'message' => __('Consultation sub-category updated successfully.'),
            'sub_category' => new ConsultationSubCategoryResource($subCategory),
        ], 200);
    }

    public function destroy(string $id)
    {
        $this->subCategoryService->delete($id);

        return response()->json([
            'message' => __('Consultation sub-category deleted successfully.'),
        ], 200);
    }
}
