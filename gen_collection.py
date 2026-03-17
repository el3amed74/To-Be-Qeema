import json

B = "{{base_url}}"
AUTH = [{"key": "Accept", "value": "application/json"}, {"key": "Authorization", "value": "Bearer {{token}}"}]
NO_AUTH = [{"key": "Accept", "value": "application/json"}]


def raw_body(data: dict):
    return {"mode": "raw", "raw": json.dumps(data, ensure_ascii=False), "options": {"raw": {"language": "json"}}}


def form_body(fields: list):
    return {"mode": "formdata", "formdata": fields}


def form_field(key, value=None, ftype="text"):
    if ftype == "file":
        return {"key": key, "type": "file", "src": ""}
    return {"key": key, "value": value, "type": "text"}


def req(method, path, body=None, auth=True):
    r = {"method": method, "header": AUTH if auth else NO_AUTH, "url": {"raw": B + path}}
    if body:
        r["body"] = body
    return r


def it(name, method, path, body=None, auth=True):
    return {"name": name, "request": req(method, path, body, auth)}


def folder(name, items):
    return {"name": name, "item": items}


collection = {
    "info": {
        "name": "To-Be API Collection",
        "schema": "https://schema.getpostman.com/json/collection/v2.1.0/collection.json",
    },
    "variable": [
        {"key": "base_url", "value": "http://localhost/tobe/public/api", "type": "string"},
        {"key": "token", "value": "", "type": "string"},
    ],
    "item": [
        # ─────────────────────────────────────────────
        #  DASHBOARD
        # ─────────────────────────────────────────────
        folder("Dashboard", [
            folder("Auth", [
                it("Login", "POST", "/dashboard/login",
                   raw_body({"email": "admin@example.com", "password": "password123"}), auth=False),
                it("Logout", "POST", "/dashboard/logout"),
                it("Logout All Devices", "POST", "/dashboard/logout-all-devices"),
                it("Get Profile", "GET", "/dashboard/profile"),
                it("Update Profile", "PUT", "/dashboard/user",
                   raw_body({"name": "Admin Name", "email": "admin@example.com"})),
                it("Update Password", "PUT", "/dashboard/password",
                   raw_body({"password": "NewPass@123", "password_confirmation": "NewPass@123"})),
            ]),

            folder("Users", [
                it("Create User (super-admin)", "POST", "/dashboard/users",
                   raw_body({
                       "name": "John Doe",
                       "email": "john@example.com",
                       "phone_number": None,
                       "roles": [1],
                       "bank_name": "CIB",
                       "bank_account_name": "John Doe",
                       "bank_account_number": "123456789",
                       "deduction_type": "percentage",
                       "deduction_value": 10,
                   })),
            ]),

            folder("Roles & Permissions", [
                it("List Roles", "GET", "/dashboard/roles"),
                it("Create Role", "POST", "/dashboard/roles", raw_body({"name": "editor"})),
                it("Show Role", "GET", "/dashboard/roles/1"),
                it("Update Role", "PUT", "/dashboard/roles/1", raw_body({"name": "editor"})),
                it("Delete Role", "DELETE", "/dashboard/roles/1"),
                it("Assign Permission to Role", "POST", "/dashboard/roles/1/permissions",
                   raw_body({"permission_id": 1})),
                it("List Permissions", "GET", "/dashboard/permissions"),
                it("Create Permission", "POST", "/dashboard/permissions", raw_body({"name": "courses"})),
                it("Show Permission", "GET", "/dashboard/permissions/1"),
                it("Update Permission", "PUT", "/dashboard/permissions/1", raw_body({"name": "courses"})),
                it("Delete Permission", "DELETE", "/dashboard/permissions/1"),
            ]),

            folder("User Roles & Permissions", [
                it("Show User Roles & Permissions", "GET", "/dashboard/users/1/roles-permissions"),
                it("Assign Role to User", "POST", "/dashboard/users/1/roles", raw_body({"role_id": 1})),
                it("Remove Role from User", "DELETE", "/dashboard/users/1/roles", raw_body({"role_id": 1})),
                it("Sync User Roles", "PUT", "/dashboard/users/1/roles/sync", raw_body({"roles": [1, 2]})),
                it("Assign Permission to User", "POST", "/dashboard/users/1/permissions",
                   raw_body({"permission_id": 1})),
                it("Remove Permission from User", "DELETE", "/dashboard/users/1/permissions",
                   raw_body({"permission_id": 1})),
            ]),

            folder("Categories", [
                it("List Categories", "GET", "/dashboard/categories"),
                it("Create Category", "POST", "/dashboard/categories",
                   form_body([
                       form_field("name_en", "Education"),
                       form_field("name_ar", "تعليم"),
                       form_field("description_en", "Education category"),
                       form_field("description_ar", "فئة تعليمية"),
                       form_field("type_slug", "education"),
                       form_field("image", ftype="file"),
                   ])),
                it("Show Category", "GET", "/dashboard/categories/1"),
                it("Edit Category (for edit)", "GET", "/dashboard/categories/1/edit"),
                it("Update Category", "PUT", "/dashboard/categories/1",
                   raw_body({"name_en": "Education", "name_ar": "تعليم", "type_slug": "education"})),
                it("Delete Category", "DELETE", "/dashboard/categories/1"),
            ]),

            folder("Sub-Categories", [
                it("List Sub-Categories", "GET", "/dashboard/sub-categories"),
                it("Create Sub-Category", "POST", "/dashboard/sub-categories",
                   form_body([
                       form_field("name_en", "Math"),
                       form_field("name_ar", "رياضيات"),
                       form_field("description_en", "Math sub-category"),
                       form_field("description_ar", "قسم رياضيات"),
                       form_field("category_id", "1"),
                       form_field("image", ftype="file"),
                   ])),
                it("Show Sub-Category", "GET", "/dashboard/sub-categories/1"),
                it("Update Sub-Category", "PUT", "/dashboard/sub-categories/1",
                   raw_body({"name_en": "Math", "name_ar": "رياضيات", "category_id": 1})),
                it("Delete Sub-Category", "DELETE", "/dashboard/sub-categories/1"),
            ]),

            folder("Levels", [
                it("List Levels", "GET", "/dashboard/levels"),
                it("Create Level", "POST", "/dashboard/levels",
                   form_body([
                       form_field("name_en", "Beginner"),
                       form_field("name_ar", "مبتدئ"),
                       form_field("description_en", "Beginner level"),
                       form_field("description_ar", "مستوى مبتدئ"),
                       form_field("image", ftype="file"),
                   ])),
                it("Show Level", "GET", "/dashboard/levels/1"),
                it("Edit Level (for edit)", "GET", "/dashboard/levels/1/edit"),
                it("Update Level", "PUT", "/dashboard/levels/1",
                   raw_body({"name_en": "Beginner", "name_ar": "مبتدئ"})),
                it("Delete Level", "DELETE", "/dashboard/levels/1"),
            ]),

            folder("Mentors", [
                it("List Mentors", "GET", "/dashboard/mentors"),
                it("Create Mentor", "POST", "/dashboard/mentors",
                   raw_body({
                       "name": "Ahmed Ali",
                       "email": "ahmed@example.com",
                       "phone_number": "01012345678",
                       "roles": [2],
                       "bank_name": "NBE",
                       "bank_account_name": "Ahmed Ali",
                       "bank_account_number": "987654321",
                       "deduction_type": "percentage",
                       "deduction_value": 15,
                   })),
                it("Show Mentor", "GET", "/dashboard/mentors/1"),
                it("Update Mentor", "PUT", "/dashboard/mentors/1", raw_body({"name": "Ahmed Updated"})),
                it("Delete Mentor", "DELETE", "/dashboard/mentors/1"),
            ]),

            folder("Banners", [
                it("List Banners", "GET", "/dashboard/banners"),
                it("Create Banner", "POST", "/dashboard/banners",
                   form_body([
                       form_field("name_en", "Banner 1"),
                       form_field("name_ar", "بانر 1"),
                       form_field("description_en", "Description"),
                       form_field("description_ar", "وصف"),
                       form_field("button_text_en", "Click"),
                       form_field("button_text_ar", "اضغط"),
                       form_field("button_url", "https://example.com"),
                       form_field("image", ftype="file"),
                   ])),
                it("Show Banner", "GET", "/dashboard/banners/1"),
                it("Update Banner", "PUT", "/dashboard/banners/1",
                   raw_body({"name_en": "Updated Banner", "name_ar": "بانر محدث"})),
                it("Update Banner Image", "POST", "/dashboard/banners/1/update-img",
                   form_body([form_field("image", ftype="file")])),
                it("Delete Banner", "DELETE", "/dashboard/banners/1"),
            ]),

            folder("FAQs & About Us", [
                it("List FAQs", "GET", "/dashboard/faqs"),
                it("Create FAQ", "POST", "/dashboard/faqs",
                   raw_body({
                       "question_en": "What is this?",
                       "question_ar": "ما هذا؟",
                       "answer_en": "This is a platform.",
                       "answer_ar": "هذه منصة.",
                   })),
                it("Show FAQ", "GET", "/dashboard/faqs/1"),
                it("Edit FAQ (for edit)", "GET", "/dashboard/faqs/1/edit"),
                it("Update FAQ", "PUT", "/dashboard/faqs/1",
                   raw_body({
                       "question_en": "Updated?",
                       "question_ar": "محدث؟",
                       "answer_en": "Updated answer.",
                       "answer_ar": "إجابة محدثة.",
                   })),
                it("Delete FAQ", "DELETE", "/dashboard/faqs/1"),
                it("Get About Us Page", "GET", "/dashboard/about-us"),
                it("Update About Us Page", "POST", "/dashboard/about-us/update",
                   raw_body({"content_en": "About us content", "content_ar": "محتوى عنا"})),
            ]),

            folder("Courses", [
                it("List Courses", "GET", "/dashboard/courses"),
                it("Create Course", "POST", "/dashboard/courses",
                   form_body([
                       form_field("name_en", "Laravel Course"),
                       form_field("name_ar", "كورس لارافيل"),
                       form_field("description_en", "Learn Laravel"),
                       form_field("description_ar", "تعلم لارافيل"),
                       form_field("type", "live"),
                       form_field("price", "500"),
                       form_field("sub_category_id", "1"),
                       form_field("level_id", "1"),
                       form_field("mentor_id", "1"),
                       form_field("earning_points", "100"),
                       form_field("image", ftype="file"),
                   ])),
                it("Show Course", "GET", "/dashboard/courses/1"),
                it("Edit Course (for edit)", "GET", "/dashboard/courses/1/edit"),
                it("Update Course", "PUT", "/dashboard/courses/1",
                   raw_body({"name_en": "Laravel Updated", "price": 600})),
                it("Accept Course", "PUT", "/dashboard/courses/1/accept"),
                it("Reject Course", "PUT", "/dashboard/courses/1/reject"),
                it("Delete Course", "DELETE", "/dashboard/courses/1"),
            ]),

            folder("Lessons", [
                it("List Lessons", "GET", "/dashboard/lessons"),
                it("Create Lesson", "POST", "/dashboard/lessons",
                   raw_body({
                       "course_id": 1,
                       "title_en": "Introduction",
                       "title_ar": "مقدمة",
                       "content_en": "Content here",
                       "content_ar": "المحتوى هنا",
                       "video_url": "https://example.com/video",
                       "duration": 60,
                       "order": 1,
                   })),
                it("Show Lesson", "GET", "/dashboard/lessons/1"),
                it("Edit Lesson (for edit)", "GET", "/dashboard/lessons/1/edit"),
                it("Get Next Order", "GET", "/dashboard/lessons/1/next-order"),
                it("Update Lesson", "PUT", "/dashboard/lessons/1",
                   raw_body({"title_en": "Updated Intro", "duration": 90, "order": 1})),
                it("Delete Lesson", "DELETE", "/dashboard/lessons/1"),
                it("Upload Video Chunk", "POST", "/dashboard/lesson/upload-chunk",
                   form_body([
                       form_field("file", ftype="file"),
                       form_field("dzchunkindex", "0"),
                       form_field("dztotalchunkcount", "1"),
                       form_field("dzuuid", "uuid-here"),
                   ])),
            ]),

            folder("Articles", [
                it("List Articles", "GET", "/dashboard/articles"),
                it("Create Article", "POST", "/dashboard/articles",
                   form_body([
                       form_field("course_id", "1"),
                       form_field("title_en", "Article Title"),
                       form_field("title_ar", "عنوان المقال"),
                       form_field("content_en", "Content here"),
                       form_field("content_ar", "المحتوى هنا"),
                       form_field("earning_points", "50"),
                       form_field("is_published", "0"),
                       form_field("image", ftype="file"),
                   ])),
                it("Show Article", "GET", "/dashboard/articles/1"),
                it("Edit Article (for edit)", "GET", "/dashboard/articles/1/edit"),
                it("Update Article", "PUT", "/dashboard/articles/1",
                   raw_body({"title_en": "Updated Title", "content_en": "Updated content"})),
                it("Publish Article", "PUT", "/dashboard/articles/1/publish"),
                it("Unpublish Article", "PUT", "/dashboard/articles/1/unpublish"),
                it("Accept Article", "PUT", "/dashboard/articles/1/accept"),
                it("Reject Article", "PUT", "/dashboard/articles/1/reject"),
                it("Delete Article", "DELETE", "/dashboard/articles/1"),
            ]),

            folder("Course Reservations (Admin)", [
                it("List Reservations", "GET", "/dashboard/reservations"),
                it("Update Reservation Status", "PATCH", "/dashboard/reservations/1/status",
                   raw_body({"status": "confirmed"})),
            ]),

            folder("Wallets (Admin)", [
                it("List Wallets", "GET", "/dashboard/wallets"),
                it("Show Wallet", "GET", "/dashboard/wallets/1"),
            ]),

            folder("Consultation Categories (Admin)", [
                it("List Consultation Categories", "GET", "/dashboard/consultation-categories"),
                it("Create Consultation Category", "POST", "/dashboard/consultation-categories",
                   form_body([
                       form_field("name_en", "Business"),
                       form_field("name_ar", "أعمال"),
                       form_field("description_en", "Business consulting"),
                       form_field("description_ar", "استشارات أعمال"),
                       form_field("type_slug", "business"),
                       form_field("slug", "business"),
                       form_field("image", ftype="file"),
                   ])),
                it("Show Consultation Category", "GET", "/dashboard/consultation-categories/1"),
                it("Update Consultation Category", "PUT", "/dashboard/consultation-categories/1",
                   raw_body({
                       "name_en": "Business",
                       "name_ar": "أعمال",
                       "description_en": "desc",
                       "description_ar": "وصف",
                       "type_slug": "business",
                       "slug": "business",
                   })),
                it("Delete Consultation Category", "DELETE", "/dashboard/consultation-categories/1"),
            ]),

            folder("Consultation Sub-Categories (Admin)", [
                it("List Consultation Sub-Categories", "GET", "/dashboard/consultation-sub-categories"),
                it("Create Consultation Sub-Category", "POST", "/dashboard/consultation-sub-categories",
                   form_body([
                       form_field("name_en", "Marketing"),
                       form_field("name_ar", "تسويق"),
                       form_field("description_en", "Marketing consulting"),
                       form_field("description_ar", "استشارات تسويق"),
                       form_field("consultation_category_id", "1"),
                       form_field("image", ftype="file"),
                   ])),
                it("Show Consultation Sub-Category", "GET", "/dashboard/consultation-sub-categories/1"),
                it("Update Consultation Sub-Category", "PUT", "/dashboard/consultation-sub-categories/1",
                   raw_body({
                       "name_en": "Marketing",
                       "name_ar": "تسويق",
                       "description_en": "desc",
                       "description_ar": "وصف",
                       "consultation_category_id": 1,
                   })),
                it("Delete Consultation Sub-Category", "DELETE", "/dashboard/consultation-sub-categories/1"),
            ]),

            folder("Consultation Sessions (Admin)", [
                it("List Consultation Sessions", "GET", "/dashboard/consultation-sessions"),
                it("Create Consultation Session", "POST", "/dashboard/consultation-sessions",
                   form_body([
                       form_field("name_en", "1-on-1 Session"),
                       form_field("name_ar", "جلسة فردية"),
                       form_field("description_en", "One on one session"),
                       form_field("description_ar", "جلسة فردية"),
                       form_field("content_en", "Session content"),
                       form_field("content_ar", "محتوى الجلسة"),
                       form_field("price", "300"),
                       form_field("duration", "60"),
                       form_field("type", "live"),
                       form_field("earning_points", "50"),
                       form_field("consultation_sub_category_id", "1"),
                       form_field("mentor_id", "1"),
                       form_field("image", ftype="file"),
                       form_field("video_url", ""),
                   ])),
                it("Show Consultation Session", "GET", "/dashboard/consultation-sessions/1"),
                it("Update Consultation Session", "PUT", "/dashboard/consultation-sessions/1",
                   raw_body({"name_en": "Updated Session", "price": 350, "type": "live"})),
                it("Delete Consultation Session", "DELETE", "/dashboard/consultation-sessions/1"),
            ]),

            folder("Consultation Reservations (Admin)", [
                it("List Consultation Reservations", "GET", "/dashboard/consultation-reservations"),
                it("Show Consultation Reservation", "GET", "/dashboard/consultation-reservations/1"),
                it("Update Consultation Reservation Status", "PATCH",
                   "/dashboard/consultation-reservations/1/status",
                   raw_body({"status": "confirmed"})),
            ]),

            folder("Consultation Requests (Admin)", [
                it("List Consultation Requests", "GET", "/dashboard/consultation-requests"),
                it("Show Consultation Request", "GET", "/dashboard/consultation-requests/1"),
                it("Update Consultation Request Status", "PATCH",
                   "/dashboard/consultation-requests/1/status",
                   raw_body({"status": "reviewed"})),
                it("Delete Consultation Request", "DELETE", "/dashboard/consultation-requests/1"),
            ]),
        ]),

        # ─────────────────────────────────────────────
        #  MOBILE
        # ─────────────────────────────────────────────
        folder("Mobile", [
            folder("Auth", [
                it("Sign Up", "POST", "/mobile/sign-up",
                   raw_body({
                       "first_name": "John",
                       "last_name": "Doe",
                       "email": "john@example.com",
                       "phone_number": None,
                       "password": "Pass@1234",
                   }), auth=False),
                it("Login", "POST", "/mobile/login",
                   raw_body({"identifier": "john@example.com", "password": "Pass@1234"}), auth=False),
            ]),

            folder("Courses", [
                it("List Courses", "GET", "/mobile/courses"),
                it("Show Course", "GET", "/mobile/courses/1"),
                it("My Courses", "GET", "/mobile/my-courses"),
            ]),

            folder("Articles", [
                it("List Articles", "GET", "/mobile/articles"),
                it("Show Article", "GET", "/mobile/articles/1"),
            ]),

            folder("Writers", [
                it("Show Writer", "GET", "/mobile/writers/1"),
            ]),

            folder("Course Reservations", [
                it("List My Reservations", "GET", "/mobile/reservations"),
                it("Create Reservation", "POST", "/mobile/reservations",
                   raw_body({
                       "course_id": 1,
                       "mentor_id": 1,
                       "phone_number": "01012345678",
                       "job_title": "Developer",
                       "human_type": "individual",
                       "location": "Cairo",
                       "date": "2026-04-01",
                       "time": "10:00",
                       "payment_gateway": "cash",
                   })),
                it("Show Reservation", "GET", "/mobile/reservations/1"),
            ]),

            folder("Consultations", [
                it("Get Consultation Categories", "GET", "/mobile/consultations/categories"),
                it("Get Consultation Sub-Categories", "POST", "/mobile/consultations/sub-categories",
                   raw_body({"consultation_category_id": 1})),
                it("Get Consultation Sessions", "POST", "/mobile/consultations/sessions",
                   raw_body({"consultation_sub_category_id": 1})),
                it("Get Session Details", "GET", "/mobile/consultations/sessions/1"),
            ]),

            folder("Consultation Reservations", [
                it("List My Consultation Reservations", "GET", "/mobile/consultation-reservations"),
                it("Create Consultation Reservation", "POST", "/mobile/consultation-reservations",
                   raw_body({
                       "consultation_session_id": 1,
                       "phone_number": "01012345678",
                       "date": "2026-04-01",
                       "time": "10:00",
                       "payment_gateway": "cash",
                   })),
                it("Show Consultation Reservation", "GET", "/mobile/consultation-reservations/1"),
            ]),

            folder("Consultation Requests", [
                it("Submit Request (Personal)", "POST", "/mobile/consultation-requests",
                   raw_body({
                       "type": "personal",
                       "trainning_type": "Leadership",
                       "email": "user@example.com",
                       "phone_num": "01012345678",
                       "time_to_call": "10:00 AM",
                       "location": "online",
                       "customer_needs": "I need leadership training",
                   })),
                it("Submit Request (Company)", "POST", "/mobile/consultation-requests",
                   raw_body({
                       "type": "company",
                       "trainning_type": "Management",
                       "email": "company@example.com",
                       "phone_num": "01012345678",
                       "time_to_call": "09:00 AM",
                       "location": "offline",
                       "company_name": "ACME Corp",
                       "employees_num": 50,
                       "company_needs": "Team management training",
                   })),
            ]),
        ]),
    ],
}

with open("collection.json", "w", encoding="utf-8") as f:
    json.dump(collection, f, ensure_ascii=False, indent=2)

print("collection.json generated successfully!")
