<?php

use App\Http\Controllers\Dashboard\ArticleController;
use App\Http\Controllers\Dashboard\BannerController;
use App\Http\Controllers\Dashboard\CategoriesController;
use App\Http\Controllers\Dashboard\SubCategoriesController;
use App\Http\Controllers\Dashboard\CourseController;
use App\Http\Controllers\Dashboard\FaqsController;
use App\Http\Controllers\Dashboard\LessonController;
use App\Http\Controllers\Dashboard\LevelsController;
use App\Http\Controllers\Dashboard\MentorController;
use App\Http\Controllers\Dashboard\PermissionController;
use App\Http\Controllers\Dashboard\RoleController;
use App\Http\Controllers\Dashboard\UserAuthController;
use App\Http\Controllers\Dashboard\UserController;
use App\Http\Controllers\Dashboard\UserRolePermissionController;
use App\Http\Controllers\Dashboard\ConsultationCategoryController;
use App\Http\Controllers\Dashboard\ConsultationSubCategoryController;
use App\Http\Controllers\Dashboard\ConsultationSessionController;
use App\Http\Controllers\Dashboard\ConsultationReservationController as DashboardConsultationReservationController;
use App\Http\Controllers\Dashboard\ConsultationRequestController as DashboardConsultationRequestController;
use App\Http\Controllers\Dashboard\ReservationController as AdminReservationController;
use App\Http\Controllers\Dashboard\WalletController as DashboardWalletController;
use App\Http\Controllers\VideoUploadController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\AuthController;
use App\Http\Controllers\Api\ListCourseController;
use App\Http\Controllers\Api\WriterController;
use App\Http\Controllers\Api\ReservationController;
use App\Http\Controllers\Api\ConsultationController as MobileConsultationController;
use App\Http\Controllers\Api\ConsultationReservationController as MobileConsultationReservationController;
use App\Http\Controllers\Api\ConsultationRequestController;

Route::group([
    'prefix' => 'dashboard',
    'middleware' => [
        'locale',
    ],
], function () {

    Route::post('login', [UserAuthController::class , 'login']);

    Route::middleware([
        'auth:sanctum',
    ])->group(function () {
            Route::post('logout', [UserAuthController::class , 'logout']);
            Route::post('logout-all-devices', [UserAuthController::class , 'logoutAllDevices']);
            Route::get('profile', [UserAuthController::class , 'getUser']);
            Route::put('user', [UserAuthController::class , 'updateUser']);
            Route::put('password', [UserAuthController::class , 'updatePassword']);

            Route::group([
                'middleware' => 'role_or_permission:super-admin|categories',
            ], function () {
                    Route::apiResource('categories', CategoriesController::class);
                    Route::get('categories/{id}/edit', [CategoriesController::class , 'foredit']);

                    Route::apiResource('sub-categories', SubCategoriesController::class);

                    // Consultation Routes
                    Route::apiResource('consultation-categories', ConsultationCategoryController::class);
                    Route::apiResource('consultation-sub-categories', ConsultationSubCategoryController::class);
                    Route::apiResource('consultation-sessions', ConsultationSessionController::class);

                    // Consultation Reservations
                    Route::get('consultation-reservations', [DashboardConsultationReservationController::class, 'index']);
                    Route::get('consultation-reservations/{id}', [DashboardConsultationReservationController::class, 'show']);
                    Route::patch('consultation-reservations/{id}/status', [DashboardConsultationReservationController::class, 'updateStatus']);

                    // Consultation Requests (Admin)
                    Route::get('consultation-requests', [DashboardConsultationRequestController::class, 'index']);
                    Route::get('consultation-requests/{id}', [DashboardConsultationRequestController::class, 'show']);
                    Route::patch('consultation-requests/{id}/status', [DashboardConsultationRequestController::class, 'updateStatus']);
                    Route::delete('consultation-requests/{id}', [DashboardConsultationRequestController::class, 'destroy']);
                }
                );

                Route::group([
                    'middleware' => 'role_or_permission:super-admin',
                ], function () {
                    Route::post('users', [UserController::class , 'store']);
                }
                );

                Route::group([
                    'middleware' => 'role_or_permission:super-admin|levels',
                ], function () {
                    Route::apiResource('levels', LevelsController::class);
                    Route::get('levels/{id}/edit', [LevelsController::class , 'foredit']);
                }
                );

                Route::group([
                    'middleware' => 'role_or_permission:super-admin|faqs',
                ], function () {
                    Route::apiResource('faqs', FaqsController::class);
                    Route::get('faqs/{id}/edit', [FaqsController::class , 'foredit']);
                    Route::get('about-us', [FaqsController::class , 'getAboutUsPage']);
                    Route::post('about-us/update', [FaqsController::class , 'updateAboutUsPage']);
                }
                );

                Route::group([
                    'middleware' => 'role_or_permission:super-admin|mentors',
                ], function () {
                    Route::apiResource('mentors', MentorController::class);
                }
                );

                Route::group([
                    'middleware' => 'role_or_permission:super-admin|banners',
                ], function () {
                    Route::apiResource('banners', BannerController::class);
                    Route::post('banners/{id}/update-img', [BannerController::class , 'updateImage']);
                }
                );

                Route::post('/lesson/upload-chunk', [VideoUploadController::class , 'upload']);

                Route::group([
                    'middleware' => 'role_or_permission:super-admin|courses',
                ], function () {
                    Route::apiResource('courses', CourseController::class);
                    Route::get('courses/{id}/edit', [CourseController::class , 'foredit']);
                    Route::put('courses/{id}/accept', [CourseController::class , 'accept']);
                    Route::put('courses/{id}/reject', [CourseController::class , 'reject']);
                }
                );

                Route::group([
                    'middleware' => 'role_or_permission:super-admin|lessons',
                ], function () {
                    Route::apiResource('lessons', LessonController::class);
                    Route::get('lessons/{id}/edit', [LessonController::class , 'foredit']);
                    Route::get('lessons/{course}/next-order', [LessonController::class , 'getNextOrder']);
                }
                );

                Route::group([
                    'middleware' => 'role_or_permission:super-admin|articles',
                ], function () {
                    Route::apiResource('articles', ArticleController::class);
                    Route::get('articles/{id}/edit', [ArticleController::class , 'foredit']);
                    Route::put('articles/{id}/publish', [ArticleController::class , 'publish']);
                    Route::put('articles/{id}/unpublish', [ArticleController::class , 'unpublish']);
                    Route::put('articles/{id}/accept', [ArticleController::class , 'accept']);
                    Route::put('articles/{id}/reject', [ArticleController::class , 'reject']);
                }
                );

                // ----- Roles ------
                Route::apiResource('roles', RoleController::class)->names('api.roles');

                // ----- Permissions ------
                Route::apiResource('permissions', PermissionController::class)->names('api.permissions');

                // ----- User Role & Permission Assignments -----
                Route::prefix('users/{user}')->group(function () {
                    Route::get('roles-permissions', [UserRolePermissionController::class , 'show'])
                        ->name('api.users.roles-permissions.show');

                    Route::post('roles', [UserRolePermissionController::class , 'assignRole'])
                        ->name('api.users.roles.assign');

                    Route::delete('roles', [UserRolePermissionController::class , 'removeRole'])
                        ->name('api.users.roles.remove');

                    Route::post('permissions', [UserRolePermissionController::class , 'assignPermission'])
                        ->name('api.users.permissions.assign');

                    Route::delete('permissions', [UserRolePermissionController::class , 'removePermission'])
                        ->name('api.users.permissions.remove');

                    // Bonus: replace all roles at once (very common in admin panels)
                    Route::put('roles/sync', [UserRolePermissionController::class , 'syncRoles'])
                        ->name('api.users.roles.sync');
                }
                );

                // ----- Reservations (Admin) -----
                Route::get('reservations', [AdminReservationController::class , 'index'])
                    ->name('api.reservations.index');
                Route::patch('reservations/{id}/status', [AdminReservationController::class , 'updateStatus'])
                    ->name('api.reservations.status.update');

                // ----- Wallets (Admin) -----
                Route::get('wallets', [DashboardWalletController::class, 'index']);
                Route::get('wallets/{id}', [DashboardWalletController::class, 'show']);

                // Optional: Assign permission directly to a role (role-level management)
                Route::post('roles/{role}/permissions', [RoleController::class , 'assignPermission'])
                    ->name('api.roles.permissions.assign');
            }
            );        });

Route::group([
    'prefix' => 'mobile',
    'middleware' => [
        'locale',
    ],
], function () {
    Route::post('sign-up', [AuthController::class , 'signUp']);
    Route::post('login', [AuthController::class , 'login']);

    Route::middleware('auth:sanctum')->group(function () {
            Route::get('my-courses', [ListCourseController::class , 'myCourses']);
            Route::get('writers/{id}', [WriterController::class , 'show']);

            Route::apiResource('articles', ArticleController::class)->only(['index', 'show']);
            Route::apiResource('courses', CourseController::class)->only(['index', 'show']);

            // ----- Reservations -----
            Route::get('reservations', [ReservationController::class , 'index']);
            Route::post('reservations', [ReservationController::class , 'store']);
            Route::get('reservations/{id}', [ReservationController::class , 'show']);

            // ----- Consultations -----
            Route::get('consultations/categories', [MobileConsultationController::class, 'categories']);
            Route::post('consultations/sub-categories', [MobileConsultationController::class, 'subCategories']);
            Route::post('consultations/sessions', [MobileConsultationController::class, 'sessions']);
            Route::get('consultations/sessions/{id}', [MobileConsultationController::class, 'sessionDetails']);

            // ----- Consultation Reservations -----
            Route::get('consultation-reservations', [MobileConsultationReservationController::class, 'index']);
            Route::post('consultation-reservations', [MobileConsultationReservationController::class, 'store']);
            Route::get('consultation-reservations/{id}', [MobileConsultationReservationController::class, 'show']);

            // ----- Consultation Requests -----
            Route::post('consultation-requests', [ConsultationRequestController::class, 'store']);
        }
        );
    });
