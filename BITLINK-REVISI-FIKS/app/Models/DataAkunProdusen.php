<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DataAkunProdusen extends Model
{
    use HasFactory;

    protected $table = 'data_akun_produsen';

    protected $primaryKey = 'id';
    protected $guarded = ['id'];

    // protected $fillable = [
    //     'nama_pemilik',
    //     'nama_perusahaan',
    //     'nomor_induk_berusaha',
    //     'alamat_lengkap',
    //     'email',
    //     'telepon',
    //     'username',
    //     'password',
    //     'id_kemitraan',
    // ];

    public function kemitraan()
    {
        return $this->belongsTo(DataMitra::class, 'id_kemitraan');
    }
    public function user()
    {
        return $this->hasOne(User::class, 'id', 'id_user');
    }
    public function dataEvaluasi(){
        return $this->hasMany(DataEvaluasi::class, 'id', 'id_akunp');
    }
    public function dataEdukasi(){
        return $this->hasMany(DataEdukasi::class, 'id', 'id_akunp');
    }
}
