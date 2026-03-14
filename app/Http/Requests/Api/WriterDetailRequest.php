<?php

namespace App\Http\Requests\Api;

use App\DTOs\WriterDetailDTO;
use Illuminate\Foundation\Http\FormRequest;

class WriterDetailRequest extends FormRequest
{
    public function authorize(): bool
    {
        return true;
    }

    public function rules(): array
    {
        return [];
    }

    public function toDTO(): WriterDetailDTO
    {
        return new WriterDetailDTO(
            id: (int) $this->route('id')
        );
    }
}
