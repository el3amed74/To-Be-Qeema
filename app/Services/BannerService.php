<?php

namespace App\Services;

use App\Http\Resources\CategoryResource;
use App\Repositories\BannersRepository;

class BannerService
{
    protected $bannersRepository;

    public function __construct(BannersRepository $bannersRepository)
    {
        $this->bannersRepository = $bannersRepository;
    }

    public function index($perPage = 10, $search = null, $loads = [])
    {
        return $this->bannersRepository->paginate($perPage, $search, $loads);
    }

    public function foredit($id)
    {
        return $this->bannersRepository->forEdit($id);
    }

    public function showBanner($id, $loads = [])
    {
        return new CategoryResource($this->bannersRepository->findById($id, $loads));
    }

    public function createBanner(array $data)
    {
        return $this->bannersRepository->create($data);
    }

    public function updateBanner($id, array $data)
    {
        return $this->bannersRepository->update($id, $data);
    }

    public function deleteBanner($id)
    {
        return $this->bannersRepository->delete($id);
    }

    public function updateImg($id, array $data) {
        return $this->bannersRepository->updateImg($id, $data);
    }
}
