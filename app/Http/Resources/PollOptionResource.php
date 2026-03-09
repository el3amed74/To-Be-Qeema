<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class PollOptionResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        $locale = app()->getLocale();
        return [
            'id' => $this->id,
            'content' => $this->getTranslation('content', $locale),
            'created_at' => $this->created_at?->toISOString(),
            'updated_at' => $this->updated_at?->toISOString(),
            'poll' => new PollResource($this->whenLoaded('poll')),
            'users_count' => $this->whenCounted('users'),
            'is_voted' => $this->when(isset($this->is_voted), $this->is_voted),
        ];
    }
}
