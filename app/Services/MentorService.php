<?php

namespace App\Services;

use App\Repositories\ArticlesRepository;
use App\Repositories\CoursesRepository;
use App\Repositories\UsersRepository;
use App\Repositories\LevelsRepository;
use App\Repositories\CategoriesRepository;
use App\Repositories\PostsRepository;
use App\Repositories\PollsRepository;
use App\Repositories\LessonsRepository;
use App\Repositories\CommentsRepository;
use App\Repositories\RepliesRepository;
use App\Repositories\NotificationsRepository;
use App\Repositories\WalletsRepository;
use App\Repositories\TransactionsRepository;
use App\Repositories\ReferralsRepository;
use App\DTOs\StoreMentorDTO;
use App\DTOs\UpdateMentorDTO;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class MentorService
{
    public ArticlesRepository $articlesRepository;
    public CoursesRepository $coursesRepository;
    public UsersRepository $usersRepository;
    public LevelsRepository $levelsRepository;
    public CategoriesRepository $categoriesRepository;
    public PostsRepository $postsRepository;

    public function __construct(ArticlesRepository $articlesRepository, CoursesRepository $coursesRepository, UsersRepository $usersRepository, LevelsRepository $levelsRepository, CategoriesRepository $categoriesRepository, PostsRepository $postsRepository)
    {
        $this->articlesRepository = $articlesRepository;
        $this->coursesRepository = $coursesRepository;
        $this->usersRepository = $usersRepository;
        $this->levelsRepository = $levelsRepository;
        $this->categoriesRepository = $categoriesRepository;
        $this->postsRepository = $postsRepository;
    }

    public function getMentors($perPage = 10, $search = null)
    {
        return $this->usersRepository->getMentors($perPage, $search);
    }

    public function createMentor(StoreMentorDTO $dto)
    {
        DB::beginTransaction();
        try {
            $data = $dto->toArray();
            $data['role'] = 'mentor';
            
            $user = $this->usersRepository->create($data);
            
            if (!empty($data['mentor_details'])) {
                $user->mentorDetail()->create($data['mentor_details']);
            }

            DB::commit();
            return $user;
        } catch (\Exception $e) {
            DB::rollBack();
            Log::error('Error creating mentor: ' . $e->getMessage());
            throw $e;
        }
    }

    public function findMentorById($id, $loads = [], $counts = [])
    {
        return $this->usersRepository->findById($id, $loads, $counts);
    }

    public function updateMentor(int $id, UpdateMentorDTO $dto)
    {
        DB::beginTransaction();
        try {
            $data = $dto->toArray();
            $user = $this->usersRepository->update($id, $data);

            if (!empty($data['mentor_details'])) {
                $user->mentorDetail()->updateOrCreate(
                    ['user_id' => $user->id],
                    $data['mentor_details']
                );
            }

            DB::commit();
            return $user;
        } catch (\Exception $e) {
            DB::rollBack();
            Log::error('Error updating mentor: ' . $e->getMessage());
            throw $e;
        }
    }

    public function deleteMentor(int $id)
    {
        $user = $this->usersRepository->findById($id);
        $user->roles()->detach();
        $user->delete();
        return true;
    }
}
