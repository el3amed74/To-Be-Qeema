<?php

namespace App\Repositories;

use App\Models\User;
use Illuminate\Support\Facades\Hash;

class UsersRepository
{
    public function paginate($perPage = 10, $search = null, $role = null)
    {
        return User::when($search, function ($query) use ($search) {
            $query->where('name', 'like', "%{$search}%")
                ->orWhere('email', 'like', "%{$search}%")
                ->orWhere('phone_number', 'like', "%{$search}%");
        })->when($role, function ($query) use ($role) {
            $query->role($role);
        })->latest()
        ->paginate($perPage);
    }

    public function all()
    {
        return User::all();
    }

    public function create(array $data)
    {
        $user = User::create([
            'name' => $data['name'],
            'email' => $data['email'],
            'phone_number' => $data['phone_number'] ?? null,
            'password' => Hash::make($data['password']),
            'fcm_token' => $data['fcm_token'] ?? null,
        ]);

        if (isset($data['role'])) {
            $user->assignRole($data['role']);
        }

        return $user;
    }

    public function findById($id, $loads = [], $counts = [])
    {
        return User::with($loads)->withCount($counts)->findOrFail($id);
    }

    public function findByEmail($email)
    {
        return User::where('email', $email)->first();
    }

    public function update($id, array $data)
    {
        $user = $this->findById($id);
        $updateData = [
            'name' => $data['name'] ?? $user->name,
            'email' => $data['email'] ?? $user->email,
            'phone_number' => $data['phone_number'] ?? $user->phone_number,
        ];

        if (isset($data['password'])) {
            $updateData['password'] = Hash::make($data['password']);
        }

        if (isset($data['fcm_token'])) {
            $updateData['fcm_token'] = $data['fcm_token'];
        }

        $user->update($updateData);

        if (isset($data['role'])) {
            $user->syncRoles([$data['role']]);
        }

        return $user;
    }

    public function delete(User $user)
    {
        $user->delete();

        return true;
    }

    public function getMentors($perPage = 10, $search = null)
    {
        return User::role('mentor')
        ->with('mentorDetail')
        ->with(['wallet'])
        ->withCount([
            'mentoredCourses',
            'courses',
            'posts',
            'pollsCreated',
            'wallet',
        ])
        ->when($search, function ($query) use ($search) {
            $query->where(function ($query) use ($search) {
                $query->where('name', 'like', "%{$search}%")
                    ->orWhere('email', 'like', "%{$search}%")
                    ->orWhere('phone_number', 'like', "%{$search}%");
            });
        })->latest()->paginate($perPage);
    }

    public function getStudents($perPage = 10)
    {
        return User::role('student')->paginate($perPage);
    }

    public function getByRole($role, $perPage = 10)
    {
        return User::role($role)->paginate($perPage);
    }

    public function assignRole(User $user, $role)
    {
        $user->syncRoles([$role]);

        return $user;
    }

    public function enrollCourse(User $user, $courseId)
    {
        if (!$user->courses()->where('course_id', $courseId)->exists()) {
            $user->courses()->attach($courseId);
            return true;
        }

        return false;
    }

    public function unenrollCourse(User $user, $courseId)
    {
        $user->courses()->detach($courseId);

        return true;
    }

    public function isEnrolledInCourse(User $user, $courseId)
    {
        return $user->courses()->where('course_id', $courseId)->exists();
    }

    public function getEnrolledCourses(User $user, $perPage = 10)
    {
        return $user->courses()->paginate($perPage);
    }

    public function getMentoredCourses(User $user, $perPage = 10)
    {
        return $user->mentoredCourses()->paginate($perPage);
    }

    public function getUserStatistics($userId)
    {
        $user = User::with(['wallet'])->findOrFail($userId);

        return [
            'enrolled_courses' => $user->courses()->count(),
            'mentored_courses' => $user->mentoredCourses()->count(),
            'posts_created' => $user->posts()->count(),
            'comments_made' => $user->comments()->count(),
            'articles_written' => $user->articles()->count(),
            'articles_read' => $user->articlesRead()->count(),
            'polls_created' => $user->pollsCreated()->count(),
            'wallet_balance' => $user->wallet->balance ?? 0,
            'points' => $user->points ?? 0,
        ];
    }

    public function updateFcmToken(User $user, $fcmToken)
    {
        return $user->update(['fcm_token' => $fcmToken]);
    }

    public function search($query, $perPage = 10)
    {
        return User::where('name', 'like', "%{$query}%")
            ->orWhere('email', 'like', "%{$query}%")
            ->orWhere('phone_number', 'like', "%{$query}%")
            ->paginate($perPage);
    }

    public function getActiveUsers($perPage = 10)
    {
        return User::whereNotNull('email_verified_at')
            ->latest('last_login_at')
            ->paginate($perPage);
    }

    public function getUserActivity($userId)
    {
        $user = User::findOrFail($userId);

        return [
            'recent_posts' => $user->posts()->latest()->limit(5)->get(),
            'recent_comments' => $user->comments()->latest()->limit(5)->get(),
            'recent_articles' => $user->articles()->latest()->limit(5)->get(),
            'liked_posts' => $user->likedPosts()->latest()->limit(5)->get(),
            'read_articles' => $user->articlesRead()->latest()->limit(5)->get(),
        ];
    }

    public function getLessonProgress($userId, $courseId = null)
    {
        $user = User::findOrFail($userId);

        $query = $user->lessons();

        if ($courseId) {
            $query->whereHas('course', function ($q) use ($courseId) {
                $q->where('id', $courseId);
            });
        }

        return $query->get()->map(function ($lesson) {
            return [
                'lesson_id' => $lesson->id,
                'lesson_title' => $lesson->title,
                'is_completed' => $lesson->pivot->is_completed,
                'progress' => $lesson->pivot->progress,
                'watch_time' => $lesson->pivot->watch_time,
                'started_at' => $lesson->pivot->started_at,
                'completed_at' => $lesson->pivot->completed_at,
            ];
        });
    }

    public function hasRole(User $user, $role)
    {
        return $user->hasRole($role);
    }

    public function verifyEmail(User $user)
    {
        return $user->markEmailAsVerified();
    }

    public function updatePassword(User $user, $newPassword)
    {
        return $user->update([
            'password' => Hash::make($newPassword),
        ]);
    }

    public function getUserRoles(User $user)
    {
        return $user->roles;
    }

    public function getUserPermissions(User $user)
    {
        return $user->permissions;
    }

    public function getUserRole(User $user, $role)
    {
        return $user->roles->where('name', $role)->first();
    }

    public function removeAccessToken(User $user)
    {
        return $user->tokens()->delete();
    }

    public function hasRoleByUserId($userId, $role) : bool
    {
        return User::findOrFail($userId)->hasRole($role);
    }

    /**
     * Get details for an article writer (mentor).
     */
    public function getWriterDetails(int $id): User
    {
        $user = User::withCount(['mentoredCourses', 'articles'])
            ->with([
                'mentoredCourses' => function ($query) {
                    $query->withCount('users')->with('mentors');
                },
                'articles'
            ])
            ->findOrFail($id);

        $user->total_students_count = $user->mentoredCourses->sum('users_count');

        return $user;
    }
}
