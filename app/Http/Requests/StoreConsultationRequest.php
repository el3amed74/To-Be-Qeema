<?php

namespace App\Http\Requests;

use App\DTOs\ConsultationRequestDTO;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class StoreConsultationRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
            'type' => ['required', Rule::in(['personal', 'company'])],
            'trainning_type' => ['required', 'string', 'max:255'],
            'email' => ['required', 'email', 'max:255'],
            'phone_num' => ['required', 'string', 'max:20'],
            'time_to_call' => ['required', 'string', 'max:255'],
            'location' => ['required', Rule::in(['online', 'offline'])],
            
            // Personal fields
            'customer_needs' => ['required_if:type,personal', 'nullable', 'string'],
            
            // Company fields
            'company_name' => ['required_if:type,company', 'nullable_if:type,personal', 'string', 'max:255'],
            'employees_num' => ['required_if:type,company', 'nullable_if:type,personal', 'integer', 'min:1'],
            'company_needs' => ['required_if:type,company', 'nullable_if:type,personal', 'string'],
        ];
    }

    /**
     * Convert the request to a DTO.
     */
    public function toDTO(): ConsultationRequestDTO
    {
        return new ConsultationRequestDTO(
            type: $this->validated('type'),
            trainning_type: $this->validated('trainning_type'),
            email: $this->validated('email'),
            phone_num: $this->validated('phone_num'),
            time_to_call: $this->validated('time_to_call'),
            location: $this->validated('location'),
            user_id: auth()->id(),
            customer_needs: $this->validated('customer_needs'),
            company_needs: $this->validated('company_needs'),
            company_name: $this->validated('company_name'),
            employees_num: $this->validated('employees_num'),
        );
    }
}
