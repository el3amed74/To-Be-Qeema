<?php

namespace App\Http\Requests\Api;

use Illuminate\Foundation\Http\FormRequest;
use App\DTOs\ReservationDTO;

class StoreReservationRequest extends FormRequest
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
            'course_id' => 'required|exists:courses,id',
            'mentor_id' => 'required|exists:users,id',
            'phone_number' => 'required|string',
            'job_title' => 'required|string',
            'human_type' => 'required|string',
            'location' => 'required|string',
            'date' => 'required|date_format:Y-m-d',
            'time' => 'required|date_format:H:i',
            'payment_gateway' => 'required|string|in:cash,paymob_visa,paymob_wallet',
        ];
    }

    public function toDTO(float $amount): ReservationDTO
    {
        return new ReservationDTO(
            user_id: $this->user()->id,
            course_id: (int) $this->course_id,
            mentor_id: (int) $this->mentor_id,
            phone_number: $this->phone_number,
            job_title: $this->job_title,
            human_type: $this->human_type,
            location: $this->location,
            date: $this->date,
            time: $this->time,
            payment_gateway: $this->payment_gateway,
            amount: $amount
        );
    }
}
