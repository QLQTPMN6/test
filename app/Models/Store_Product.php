<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Store_Product extends Model
{
    public $timestamps = false;
    protected $table = 'store__products';
    protected $fillable = ['store_id', 'product_id'];
}
