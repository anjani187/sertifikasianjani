<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Status;

class Daftar extends Model
{
   use HasFactory; 
   protected $table = 'daftar';

    protected $fillable = [
        'judul_tugas',
        'deskripsi',
        'deadline',
        'status_id'
    ];

  public function status()
{
    return $this->belongsTo(Status::class,'status_id');
}
}
