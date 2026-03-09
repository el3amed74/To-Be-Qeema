<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class UserResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'id'        => $this->id,
            'name' => $this->name,
            'email' => $this->email,
            'phone_number' => $this->phone_number,
            'points' => $this->points,
            'email_verified_at' => $this->email_verified_at?->toISOString(),
            'created_at' => $this->created_at?->toISOString(),
            'courses_count' => $this->whenCounted('courses'),
            'mentored_courses_count' => $this->whenCounted('mentored_courses'),
            'posts_count' => $this->whenCounted('posts'),
            'comments_count' => $this->whenCounted('comments'),
            'articles_count' => $this->whenCounted('articles'),
            'articles_read_count' => $this->whenCounted('articles_read'),
            'polls_created_count' => $this->whenCounted('polls_created'),
            'mentor_detail' => new MentorDetailResource($this->whenLoaded('mentorDetail')),
            'posts_created_count' => $this->whenCounted('postsCreated'),
            'wallet_balance' =>new WalletResource($this->whenLoaded('wallet')),
            'polls_created_count' => $this->whenCounted('pollsCreated'),
            'points' => $this->points ?? 0,
        ];
    }
}
