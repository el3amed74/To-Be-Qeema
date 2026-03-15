<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use App\DTOs\ConsultationReservationDTO;

class StoreConsultationReservationRequest extends FormRequest
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
            'consultation_session_id' => 'required|exists:consultation_sessions,id',
            'phone_number' => 'required|string',
            'date' => 'required|date_format:Y-m-d',
            'time' => 'required|date_format:H:i',
            'payment_gateway' => 'required|string|in:cash,paymob_visa,paymob_wallet',
        ];
    }

    public function toDTO(float $amount): ConsultationReservationDTO
    {
        return new ConsultationReservationDTO(
            user_id: $this->user()->id,
            consultation_session_id: (int) $this->consultation_session_id,
            phone_number: $this->phone_number,
            date: $this->date,
            time: $this->time,
            payment_gateway: $this->payment_gateway,
            amount: $amount
        );
    }
}
