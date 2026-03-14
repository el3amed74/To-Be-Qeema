<?php

namespace App\Http\Controllers\Dashboard;

use App\Models\Article;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\Article\IndexRequest;
use App\Http\Requests\Article\StoreRequest;
use App\Http\Requests\Course\UpdateRequest;
use App\Http\Resources\ArticleResource;
use App\Services\ArticleService;

class ArticleController extends Controller
{
    public ArticleService $articleService;

    public function __construct(ArticleService $articleService)
    {
        $this->articleService = $articleService;
    }
    /**
     * Display a listing of the resource.
     * mentor  => function($query) {
      *          $query->with(['roles', 'mentorDetail'])
        *              ->withCount(['courses', 'mentoredCourses', 'posts', 'comments', 'articles', 'articlesRead', 'pollsCreated']);
        *    }
     * user => function($query) {
     *           $query->with(['roles', 'mentorDetail', 'wallet'])
      *                ->withCount(['courses', 'mentoredCourses', 'posts', 'comments', 'articles', 'articlesRead', 'pollsCreated']);
      *      }
     */
    public function index(IndexRequest $request)
    {
        $loads = [
            'course.subCategory',
            'course.level',
            'course.mentor',
            'user',
        ];
        $articles = $this->articleService->index(
            $request->per_page ?? 10,
            $request->search,
            $request->course_id,
            $request->user_id,
            $request->is_published,
            $request->accepted,
            $loads
        );

        return response()->json([
            'message' => __('Articles fetched successfully.'),
            'articles' => [
                'data' => ArticleResource::collection($articles),
                'links' => $articles->toArray()['links'] ?? null,
            ],
        ], 200);
    }


    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreRequest $request)
    {
        $data = $request->all();
        $image = null;
        if(isset($data['image']) && $data['image']) {
            $image = $request->file('image')->store('articles', 'public');
            $data['image'] = $image;
        }
        $article = $this->articleService->create($data);
        return response()->json([
            'message' => __('Article created successfully.'),
            'article' => new ArticleResource($article),
        ], 201);
    }

    /**
     * Display the specified resource.
     * mentor  => function($query) {
      *          $query->with(['roles', 'mentorDetail'])
       *               ->withCount(['courses', 'mentoredCourses', 'posts', 'comments', 'articles', 'articlesRead', 'pollsCreated']);
       *     }
     *  user=> function($query) {
        *        $query->with(['roles', 'mentorDetail', 'wallet'])
        *              ->withCount(['courses', 'mentoredCourses', 'posts', 'comments', 'articles', 'articlesRead', 'pollsCreated']);
         *   }
     */
    public function show(string $id)
    {
        $article = $this->articleService->show($id,[
            'course.subCategory',
            'course.level',
            'course.mentor',
            'user',
            'usersRead',
            'usersLiked',
        ]);
        if(!$article) {
            return response()->json([
                'message' => __('Article not found.'),
            ], 404);
        }

        return response()->json([
            'message' => __('Article fetched successfully.'),
            'article' => new ArticleResource($article),
        ], 200);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function forEdit(string $id)
    {
        $article = $this->articleService->show($id);
        return response()->json([
            'message' => __('Article fetched successfully.'),
            'article' => $article,
        ], 200);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateRequest $request, string $id)
    {
        $data = $request->all();
        $image = null;
        if(isset($data['image']) && $data['image']) {
            $image = $request->file('image')->store('articles', 'public');
            $data['image'] = $image;
        }
        $article = $this->articleService->update($id, $data);
        if(!$article) {
            return response()->json([
                'message' => __('Article not found.'),
            ], 404);
        }
        return response()->json([
            'message' => __('Article updated successfully.'),
        ], 200);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $article = $this->articleService->delete($id);
        if(!$article) {
            return response()->json([
                'message' => __('Article not found.'),
            ], 404);
        }
        return response()->json([
            'message' => __('Article deleted successfully.'),
        ], 200);
    }

    public function publish(string $id)
    {
        $article = $this->articleService->publish($id);

        return response()->json([
            'message' => __('Article published successfully.'),
        ], 200);
    }

    public function unpublish(string $id)
    {
        $article = $this->articleService->unpublish($id);
        return response()->json([
            'message' => __('Article unpublished successfully.'),
        ], 200);
    }

    public function accept(string $id)
    {
        $article = $this->articleService->accept($id);
        return response()->json([
            'message' => __('Article accepted successfully.'),
        ], 200);
    }

    public function reject(string $id)
    {
        $article = $this->articleService->reject($id);
        return response()->json([
            'message' => __('Article rejected successfully.'),
        ], 200);
    }
}
