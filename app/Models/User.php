<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

class User extends \TCG\Voyager\Models\User
{
    use HasApiTokens, HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'name',
        'email',
        'password',
        'id_role',
        'id_service',
        'id_division',

    ];

    public function service()
    {
        return $this->belongsTo(Service::class, 'id_service');
    }

    public function division()
    {
        return $this->belongsTo(Division::class, 'id_division');
    }
    public function historique()
    {
        return $this->hasMany(Historique::class, 'id_user');
    }

    public function documents()
    {
        return $this->hasMany(Document::class, 'id_user');
    }

    	 /**
     * Check if the user has the given role.
     *
     * @param string $role
     * @return bool
     */
    public function hasRole($role)
    {
        return $this->id_role === $role;
    }

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
        'password' => 'hashed',
    ];
}
