<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\ConsultationCategoryResource;
use App\Http\Resources\ConsultationSubCategoryResource;
use App\Http\Resources\ConsultationSessionResource;
use App\Services\ConsultationCategoryService;
use App\Services\ConsultationSubCategoryService;
use App\Services\ConsultationSessionService;
use Illuminate\Http\Request;
use App\Services\CategoryService;

class ConsultationController extends Controller
{
    protected $categoryService;
    protected $subCategoryService;
    protected $sessionService;

    public function __construct(
        ConsultationCategoryService $categoryService,
        ConsultationSubCategoryService $subCategoryService,
        ConsultationSessionService $sessionService
        )
    {
        $this->categoryService = $categoryService;
        $this->subCategoryService = $subCategoryService;
        $this->sessionService = $sessionService;
    }

    public function categories(Request $request)
    {
        $categories = $this->categoryService->index($request->per_page ?? 15, $request->search);
        return response()->json([
            'message' => __('Categories fetched successfully.'),
            'categories' => ConsultationCategoryResource::collection($categories)->response()->getData(true),
        ]);
    }

    public function subCategories(Request $request)
    {
        
        $request->validate([
            'category_id' => 'required|exists:consultation_categories,id',
        ]);

        $subCategories = $this->subCategoryService->index(
            $request->per_page ?? 15,
            $request->search,
            $request->category_id
        );
        return response()->json([
            'message' => __('Sub-categories fetched successfully.'),
            'sub_categories' => ConsultationSubCategoryResource::collection($subCategories)->response()->getData(true),
        ]);
    }

    public function sessions(Request $request)
    {
        $request->validate([
            'sub_category_id' => 'required|exists:consultation_sub_categories,id',
        ]);

        $sessions = $this->sessionService->index(
            $request->per_page ?? 15,
            $request->search,
            $request->sub_category_id,
            $request->mentor_id,
        ['mentor']
        );
        return response()->json([
            'message' => __('Sessions fetched successfully.'),
            'sessions' => ConsultationSessionResource::collection($sessions)->response()->getData(true),
        ]);
    }

    public function sessionDetails($id)
    {
        $session = $this->sessionService->findById($id, ['mentor', 'subCategory.category']);
        return response()->json([
            'message' => __('Session details fetched successfully.'),
            'session' => new ConsultationSessionResource($session),
        ]);
    }
}
