<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class User_Store extends Model
{
    public $timestamps = false;
    protected $table = 'user__stores';
    protected $fillable = ['user_id', 'store_id'];

    
}
