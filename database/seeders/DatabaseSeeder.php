<?php

namespace Database\Seeders;

use App\Models\Article;
use App\Models\Category;
use App\Models\Comment;
use App\Models\Course;
use App\Models\Faq;
use App\Models\Lesson;
use App\Models\Level;
use App\Models\MentorDetail;
use App\Models\Poll;
use App\Models\PollOption;
use App\Models\Post;
use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // Call role seeder first
        $this->call([
            RoleSeeder::class,
            PermissionsSeeder::class,
            GeneralSettingSeeder::class,
        ]);

        // Create admin user
        $admin = User::create([
            'name' => 'Super Admin',
            'email' => 'admin@tobe.com',
            'password' => Hash::make('password'),
            'phone_number' => '09123456789',
            'email_verified_at' => now(),
        ]);
        $admin->assignRole('super-admin');

        // Create mentors
        $mentors = User::factory(5)->create()->each(function ($user) {
            $user->assignRole('mentor');
            MentorDetail::factory()->create(['user_id' => $user->id]);
        });

        // Create students
        $students = User::factory(20)->create()->each(function ($user) {
            $user->assignRole('student');
        });

        // Create categories and levels
        $categories = Category::factory(8)->create();
        $levels = Level::factory(4)->create();

        // Create courses with lessons
        $courses = Course::factory(15)->create()->each(function ($course) use ($mentors) {
            // Assign random mentor
            $course->update(['mentor_id' => $mentors->random()->id]);

            // Create lessons for each course
            Lesson::factory(rand(5, 12))->create([
                'course_id' => $course->id,
            ]);

            // Create articles for course
            Article::factory(rand(2, 5))->create([
                'course_id' => $course->id,
                'user_id' => $course->mentor_id,
            ]);

            // Create posts for course
            Post::factory(rand(3, 8))->create([
                'course_id' => $course->id,
            ])->each(function ($post) use ($course) {
                // Add comments to posts
                Comment::factory(rand(0, 5))->create([
                    'post_id' => $post->id,
                ]);

                // Random likes on posts
                $post->users()->attach(
                    User::inRandomOrder()->limit(rand(1, 5))->pluck('id')
                );
            });

            // Create polls for course
            Poll::factory(rand(1, 3))->create([
                'course_id' => $course->id,
                'user_id' => $course->mentor_id,
            ])->each(function ($poll) {
                // Add options to poll
                PollOption::factory(rand(2, 4))->create([
                    'poll_id' => $poll->id,
                ])->each(function ($option) {
                    // Random votes
                    $option->users()->attach(
                        User::inRandomOrder()->limit(rand(0, 8))->pluck('id')
                    );
                });
            });

            // Enroll random students
            $course->users()->attach(
                User::role('student')->inRandomOrder()->limit(rand(5, 15))->pluck('id')
            );
        });

        // Create standalone articles
        Article::factory(10)->create()->each(function ($article) {
            // Random likes on articles
            $article->usersLiked()->attach(
                User::inRandomOrder()->limit(rand(1, 10))->pluck('id')
            );

            // Random reads on articles
            $article->usersRead()->attach(
                User::inRandomOrder()->limit(rand(5, 15))->pluck('id')
            );
        });

        // Create FAQs
        Faq::factory(20)->create();

        $this->command->info('Database seeded successfully!');
    }
}
