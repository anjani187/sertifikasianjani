<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Status extends Model
{
     protected $table = 'status';

    protected $fillable = [
        'name'
    ];

    public function daftar()
    {
        return $this->hasMany(Daftar::class);
    }
}
