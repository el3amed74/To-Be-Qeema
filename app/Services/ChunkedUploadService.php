<?php

namespace App\Services;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;

class ChunkedUploadService
{
    private string $tempDisk = 'local';

    private string $tempPath = 'chunks';

    /**
     * Handle an incoming chunk and assemble the file when all chunks arrive.
     *
     * Returns the final path once complete, or null while still receiving chunks.
     */
    public function handleChunk(Request $request, string $destinationDisk = 'public', string $destinationFolder = 'videos'): ?string
    {
        $chunk = $request->file('file');
        $dzUuid = $request->input('dzuuid');           // unique file identifier from Dropzone
        $chunkIndex = (int) $request->input('dzchunkindex');
        $totalChunks = (int) $request->input('dztotalchunkcount');
        $originalName = $request->input('dzfilename', $chunk->getClientOriginalName());

        // Store this chunk in a temp folder keyed by the upload UUID
        $chunkDir = "{$this->tempPath}/{$dzUuid}";
        $chunk->storeAs($chunkDir, "chunk_{$chunkIndex}", $this->tempDisk);

        // Check if all chunks have arrived
        $uploadedChunks = Storage::disk($this->tempDisk)->files($chunkDir);

        if (count($uploadedChunks) < $totalChunks) {
            return null; // Still waiting for more chunks
        }

        return $this->assembleChunks($dzUuid, $originalName, $totalChunks, $destinationDisk, $destinationFolder);
    }

    /**
     * Merge all chunks into the final file and clean up temp files.
     */
    private function assembleChunks(string $uuid, string $originalName, int $totalChunks, string $disk, string $folder): string
    {
        $extension = pathinfo($originalName, PATHINFO_EXTENSION);
        $finalName = Str::uuid() . '.' . $extension;
        $finalPath = "{$folder}/{$finalName}";
        $chunkDir = "{$this->tempPath}/{$uuid}";
        $tempFilePath = Storage::disk($this->tempDisk)->path("{$chunkDir}/final_{$uuid}.{$extension}");

        // Write chunks sequentially into a single file
        $output = fopen($tempFilePath, 'wb');

        for ($i = 0; $i < $totalChunks; $i++) {
            $chunkPath = Storage::disk($this->tempDisk)->path("{$chunkDir}/chunk_{$i}");
            $input = fopen($chunkPath, 'rb');
            stream_copy_to_stream($input, $output);
            fclose($input);
        }

        fclose($output);

        // Move assembled file to the destination disk
        Storage::disk($disk)->put($finalPath, fopen($tempFilePath, 'rb'));

        // Clean up temp chunks
        Storage::disk($this->tempDisk)->deleteDirectory($chunkDir);

        return $finalPath;
    }
}
