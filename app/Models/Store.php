<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Store extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'address', 'phone',
    ];

    public function product()
    {
        return $this->belongsToMany('App\Models\Product', 'store__products', 'store_id', 'product_id');
    }
}
