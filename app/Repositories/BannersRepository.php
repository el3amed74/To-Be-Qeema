<?php

namespace App\Repositories;

use App\Models\Banner;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Storage;

use function PHPUnit\Framework\isNull;

class BannersRepository
{
    public function paginate($perPage = 10, $search = null, $loads = [])
    {
        return Banner::with($loads)->when($search, function ($query) use ($search) {
            $query->where('title->'.App::getLocale(), 'like', "%{$search}%")
                ->orWhere('description->'.App::getLocale(), 'like', "%{$search}%");
        })->paginate($perPage);
    }

    public function forEdit($id)
    {
        return Banner::findOrFail($id);
    }

    public function all()
    {
        return Banner::all();
    }

    public function create(array $data)
    {
        return Banner::create([
            'title' => [
                'en' => $data['name_en'],
                'ar' => $data['name_ar'],
            ],
            'description' => [
                'en' => $data['description_en'],
                'ar' => $data['description_ar'],
            ],
            'button_text' => [
                'en' => $data['button_text_en'],
                'ar' => $data['button_text_ar'],
            ],
            'button_url' => $data['button_url'],
            'image' => $data['image'] ?? null,
        ]);
    }

    public function findById($id, $loads = [])
    {
        return Banner::with($loads)->findOrFail($id);
    }

    public function update($id, array $data)
    {
        $banner = Banner::findOrFail($id);
//        $indexedTitle = $data['title_en'] ?? $banner->getTranslation('title', 'en');
//        $indexedTitle .= ' '.($data['title_ar'] ?? $banner->getTranslation('title', 'ar'));
//
//        $indexedDescription = $data['description_en'] ?? $banner->getTranslation('description', 'en');
//        $indexedDescription .= ' '.($data['description_ar'] ?? $banner->getTranslation('description', 'ar'));

//        if (isset($data['image']) && $data['image']) {
//            Storage::delete($banner->image);
//        }
//dd($banner);
        return $banner->update([
            'title' => [
                'en' => $data['title_en'] ?? $banner->getTranslation('title', 'en'),
                'ar' => $data['title_ar'] ?? $banner->getTranslation('title', 'ar'),
            ],
            'description' => [
                'en' => $data['description_en'] ?? $banner->getTranslation('description', 'en'),
                'ar' => $data['description_ar'] ?? $banner->getTranslation('description', 'ar'),
            ],
            'button_text' => [
                'en' => $data['button_text_en'] ?? $banner->getTranslation('button_text', 'en'),
                'ar' => $data['button_text_ar'] ?? $banner->getTranslation('button_text', 'ar'),
            ],
            'button_url' => $data['button_url'] ?? null,
        ]);
    }

    public function delete($id)
    {
        $banner = Banner::findOrFail($id);
        if ($banner->image && Storage::exists($banner->image)) {
            Storage::delete($banner->image);
        }
        $banner->delete();

        return true;
    }

    public function search($query, $perPage = 10)
    {
        return Banner::where('title->'.App::getLocale(), 'like', "%{$query}%")
            ->orWhere('description->'.App::getLocale(), 'like', "%{$query}%")
            ->paginate($perPage);
    }

    public function updateImg($id, $data)
    {
        $banner = Banner::findOrFail($id);

        if (! isNull($banner['image'])) {
            Storage::delete($banner->image);
        }

        $path = Storage::disk('public')->put('banners', $data['image']);
        $banner->update(['image' => $path]);

        return $banner;
    }
}
