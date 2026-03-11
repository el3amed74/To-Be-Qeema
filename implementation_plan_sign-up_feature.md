# Mobile API Sign-Up Endpoint Implementation

This plan outlines the steps to introduce a mobile-specific API namespace and implement the user registration (sign-up) endpoint using request validation, response and DTOs and the Service-Repository pattern.

## Proposed Changes

### Routes
#### [MODIFY] api.php(file:///c:/laragon/www/tobe/routes/api.php)
- Add a new route group with the prefix `mobile` and the middleware `locale`.
- Define the `POST /sign-up` route within this group, pointing to `App\Http\Controllers\Api\AuthController@signUp`.

---

### Request Validation & DTO
#### [NEW] SignUpRequest.php(file:///c:/laragon/www/tobe/app/Http/Requests/Api/SignUpRequest.php)
- Implement `rules()`:
  - `first_name`: required, string, max:255
  - `last_name`: required, string, max:255
  - `email`: required_without:phone_number, nullable, email, unique:users,email
  - `phone_number`: required_without:email, nullable, string, unique:users,phone_number
  - `password`: required, confirmed, string, Password rules (min 8 chars, letters, mixedCase, numbers, symbols)

#### [NEW] SignUpDTO.php(file:///c:/laragon/www/tobe/app/DTOs/Api/Auth/SignUpDTO.php)
- A readonly class to encapsulate the validated request data.
- Handles combining `first_name` and `last_name` into a single `name` property.
- Contains properties for `name`, `email`, `phone_number`, and `password`.

---

### Controllers, Services & Repositories
#### [NEW] AuthController.php(file:///c:/laragon/www/tobe/app/Http/Controllers/Api/AuthController.php)
- Create [AuthController](file:///c:/laragon/www/tobe/app/Http/Controllers/Dashboard/UserAuthController.php#15-111) in the `App\Http\Controllers\Api` namespace.
- Inject `App\Services\Mobile\UserAuthService`.
- Implement the `signUp` method: validate the request, map to DTO, call service, and return token and user resource.

#### [NEW] MobileUserAuthService.php(file:///c:/laragon/www/tobe/app/Services/Mobile/UserAuthService.php)
- Create [MobileUserAuthService](file:///c:/laragon/www/tobe/app/Services/UserAuthService.php#10-62) in the `App\Services\Mobile` namespace.
- Inject `App\Repositories\Mobile\UserRepository`.
- Implement `register(SignUpDTO $dto)` to encapsulate business logic and token generation.

#### [NEW] MobileUserRepository.php(file:///c:/laragon/www/tobe/app/Repositories/Mobile/UserRepository.php)
- Create `MobileUserRepository` in the `App\Repositories\Mobile` namespace.
- Implement [create(array $data)](file:///c:/laragon/www/tobe/app/Services/UserAuthService.php#32-36) to insert the new user into the database.

---

## Verification Plan

### Manual Verification
- Testing via `curl` command or Postman.
- Run: `curl -X POST "http://localhost/api/mobile/sign-up" -H "Accept: application/json" -H "Content-Type: application/json" -d '{"first_name": "John", "last_name": "Doe", "email": "john.doe@example.com", "password": "StrongPassword123!", "password_confirmation": "StrongPassword123!"}'`
- Verify that a success response containing a token and the user's data is returned.
