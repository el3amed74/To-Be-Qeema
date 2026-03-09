<?php

namespace App\Repositories;

use App\Models\Faq;

class FaqsRepository
{
    public function paginate($perPage = 10)
    {
        return Faq::paginate($perPage);
    }

    public function all()
    {
        return Faq::all();
    }

    public function create(array $data)
    {
        return Faq::create([
            'question' => [
                'en' => $data['question_en'],
                'ar' => $data['question_ar'],
            ],
            'answer' => [
                'en' => $data['answer_en'],
                'ar' => $data['answer_ar'],
            ],
        ]);
    }

    public function findById($id)
    {
        return Faq::findOrFail($id);
    }

    public function update($id, array $data)
    {
        $faq = Faq::findOrFail($id);
        return $faq->update([
            'question' => [
                'en' => $data['question_en'] ?? $faq->getTranslation('question', 'en'),
                'ar' => $data['question_ar'] ?? $faq->getTranslation('question', 'ar'),
            ],
            'answer' => [
                'en' => $data['answer_en'] ?? $faq->getTranslation('answer', 'en'),
                'ar' => $data['answer_ar'] ?? $faq->getTranslation('answer', 'ar'),
            ],
        ]);
    }

    public function delete($id)
    {
        $faq = Faq::findOrFail($id);
        $faq->delete();

        return true;
    }
}
