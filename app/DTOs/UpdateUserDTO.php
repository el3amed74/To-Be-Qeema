<?php

namespace App\DTOs;

class UpdateUserDTO
{
    public function __construct(
        public readonly string $name,
        public readonly ?string $email,
        public readonly ?string $phoneNumber,
        public readonly ?array $roles = null,
        public readonly ?array $permissions = null,
        public readonly ?string $password = null,
    ) {
    }

    public function toArray(): array
    {
        $data = [
            'name' => $this->name,
            'email' => $this->email,
            'phone_number' => $this->phoneNumber,
            'roles' => $this->roles,
            'permissions' => $this->permissions,
        ];

        if ($this->password) {
            $data['password'] = $this->password;
        }

        return $data;
    }
}
