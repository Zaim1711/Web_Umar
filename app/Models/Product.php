<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;

    protected $fillable = [
        'image',
        'title',
        'description',
        'price',
        'type',
        'harga',
        'video_link',
        'jenis'
    ];

    public function colors()
    {
        return $this->hasMany(Color::class);
    }

}
