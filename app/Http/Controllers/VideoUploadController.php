<?php

namespace App\Http\Controllers;

use App\Models\Lesson;
use App\Services\ChunkedUploadService;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class VideoUploadController extends Controller
{
    public function __construct(private ChunkedUploadService $uploadService) {}

    public function index()
    {
        $lessons = Lesson::all();

        return view('test-upload', compact('lessons'));
    }

    public function upload(Request $request)
    {
        $request->validate([
            'file' => ['required', 'file'], // 'mimetypes:video/mp4,video/avi,video/quicktime,video/x-matroska'
            'lesson_id' => ['required', 'exists:lessons,id'],
            'dzuuid' => ['required', 'string'],
            'dzchunkindex' => ['required', 'integer'],
            'dztotalchunkcount' => ['required', 'integer'],
        ]);

        $finalPath = $this->uploadService->handleChunk(
            request: $request,
            destinationDisk: 'public',
            destinationFolder: 'videos/lessons'
        );

        if ($finalPath === null) {
            return response()->json(['message' => 'Chunk received'], 200);
        }

        $lesson = Lesson::findOrFail($request->lesson_id);

        if ($lesson->video_url && Storage::disk('public')->exists($lesson->video_url)) {
            Storage::disk('public')->delete($lesson->video_url);
        }

        $lesson->update(['video_url' => $finalPath]);

        return response()->json([
            'message' => 'Upload complete',
            'path' => $finalPath,
        ], 201);
    }
}
