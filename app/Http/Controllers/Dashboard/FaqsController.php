<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;
use App\Http\Requests\FaqRequest;
use App\Http\Resources\FaqsResource;
use App\Models\GeneralSetting;
use App\Services\FaqsService;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;

class FaqsController extends Controller
{
    public FaqsService $faqsService;

    public function __construct(FaqsService $faqsService)
    {
        $this->faqsService = $faqsService;
    }

    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $request->validate([
            'search' => 'nullable|string|max:255',
        ]);

        $faqs = $this->faqsService->index($request->per_page ?? 10, $request->search);

        return response()->json([
            'message' => __('Faqs fetched successfully.'),
            'faqs' => [
                'data' => FaqsResource::collection($faqs),
                'links' => $faqs->toArray()['links'] ?? null,
            ],
        ], 200);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(FaqRequest $request)
    {
        $data = $request->all();
        $faq = $this->faqsService->create($data);

        return response()->json([
            'message' => __('Faq created successfully.'),
            'faq' => new FaqsResource($faq),
        ], 201);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $faq = $this->faqsService->show($id);

        return response()->json([
            'message' => __('Faq fetched successfully.'),
            'faq' => new FaqsResource($faq),
        ], 200);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $data = $request->all();
        $faq = $this->faqsService->update($id, $data);

        return response()->json([
            'message' => __('Faq updated successfully.'),
        ], 200);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $faq = $this->faqsService->delete($id);

        return response()->json([
            'message' => __('Faq deleted successfully.'),
        ], 200);
    }

    public function foredit(string $id)
    {
        $faq = $this->faqsService->show($id);

        return response()->json([
            'message' => __('Faq fetched successfully.'),
        ], 200);
    }

    public function updateAboutUsPage(Request $request)
    {
        $data = $request->validate([
            'about_us_ar' => ['nullable', 'string'],
            'about_us_en' => ['nullable', 'string'],
        ]);

        $payload = [];

        if (array_key_exists('about_us_en', $data)) {
            $payload['en'] = $data['about_us_en'];
        }

        if (array_key_exists('about_us_ar', $data)) {
            $payload['ar'] = $data['about_us_ar'];
        }

        GeneralSetting::updateOrCreate(
            ['setting_key' => 'about_us'],
            ['setting_value' => json_encode($payload, JSON_UNESCAPED_UNICODE)]
        );

        return response()->json([
            'message' => __('About Us page updated successfully.'),
        ]);
    }

    public function getAboutUsPage()
    {
        $setting = GeneralSetting::where('setting_key', 'about_us')->first();

        $aboutUs = $setting
            ? json_decode($setting->setting_value, true)
            : [];

        $local = App::getLocale();

        return response()->json([
            'message' => __('About Us page fetched successfully.'),
            'data' => $aboutUs[$local] ?? '',
        ]);
    }
}
