<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Product;
use App\Models\Color;

class ProductColorSeeder extends Seeder
{
    public function run()
    {
        $product = Product::find(2); // Ganti dengan ID produk yang sesuai
        $product->colors()->createMany([
            ['color_name' => 'Red', 'image' => 'red_brio.jpg'],
            ['color_name' => 'Blue', 'image' => 'blue_brio.jpg'],
            // Tambahkan warna lainnya sesuai kebutuhan
        ]);
    }
}