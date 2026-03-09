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

    public function createMentor(array $data , $role = 'mentor')
    {
        $data['role'] = $role;
        return $this->usersRepository->create($data);
    }

    public function findMentorById($id, $loads = [], $counts = [])
    {
        return $this->usersRepository->findById($id, $loads, $counts);
    }

    public function updateMentor(int $id, array $data)
    {
        return $this->usersRepository->update($id, $data);
    }

    public function deleteMentor(int $id)
    {
        $user = $this->usersRepository->findById($id);
        $user->roles()->detach();
        $user->delete();
        return true;
    }
}
