<?php
namespace App\Models;

use Illuminate\Contracts\Auth\Authenticatable as AuthenticatableContract;
use Illuminate\Auth\Authenticatable;

class Authe implements AuthenticatableContract
{
    use Authenticatable;

    protected $fillable = ['id', 'accessToken'];
    protected $id;
    protected $accessToken;

    public function __construct(array $data = [])
    {
        $this->id = $data['userCode'] ?? null;
        $this->accessToken = $data['access_token'] ?? null;
    }

    public function getAuthIdentifier()
    {
        return $this->id;
    }

    public function getAuthIdentifierName()
    {
        return 'id';
    }

    public function getKey()
    {
        return $this->id;
    }

    public function getKeyName()
    {
        return 'id';
    }

    public function getId()
    {
        return $this->id;
    }

    public function getToken()
    {
        return $this->accessToken;
    }
}
