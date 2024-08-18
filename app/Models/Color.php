<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Color extends Model
{
    use HasFactory;
    protected $fillable = ['color_name','color_realname', 'image'];

    public function product()
    {
        return $this->belongsTo(Product::class);
    }

}
