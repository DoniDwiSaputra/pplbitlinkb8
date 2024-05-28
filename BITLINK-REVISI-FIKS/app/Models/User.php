<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

class User extends Authenticatable
{
    use HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */

    protected $table = 'users';
    protected $primaryKey = 'id';

    // protected $guarded = ['id'];
    protected $fillable = [
        'name',
        'email',
        'alamat_lengkap',
        'telepon',
        'role',
        'password',
        'password_not_hash'
    ];

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
     * Get the attributes that should be cast.
     *
     * @return array<string, string>
     */
    protected function casts(): array
    {
        return [
            'email_verified_at' => 'datetime',
            'password' => 'hashed',
        ];
    }

    public function dataProdusen()
    {
        return $this->hasOne(DataAkunProdusen::class, 'id_user', 'id');
    }
    public function dinas()
    {
        return $this->hasOne(DinasNganjuk::class, 'id_user', 'id');
    }
    public function nonDinas()
    {
        return $this->hasOne(DinasNonNganjuk::class, 'id_user', 'id');
    }
}
