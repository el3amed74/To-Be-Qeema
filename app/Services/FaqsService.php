<?php

namespace App\Services;

use App\Repositories\FaqsRepository;

class FaqsService
{
    public FaqsRepository $faqsRepository;

    public function __construct(FaqsRepository $faqsRepository)
    {
        $this->faqsRepository = $faqsRepository;
    }

    public function index($perPage = 10, $search = null)
    {
        return $this->faqsRepository->paginate($perPage, $search);
    }

    public function create(array $data)
    {
        return $this->faqsRepository->create($data);
    }

    public function update($id, array $data)
    {
        return $this->faqsRepository->update($id, $data);
    }

    public function delete($id)
    {
        return $this->faqsRepository->delete($id);
    }

    public function show($id)
    {
        return $this->faqsRepository->findById($id);
    }

}
