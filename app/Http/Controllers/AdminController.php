<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Image;
use App\Models\Product;
use App\Models\Promotions; // Pastikan model ini diimpor dengan benar
use Illuminate\Support\Facades\Storage;

class AdminController extends Controller
{
    public function home()
    {
        $images = Image::all();
        return view('admin.home.index', compact('images'));
    }

    public function products()
    {
        $products = Product::latest()->paginate(10);
        return view('admin.products.index', compact('products'));
    }

    public function promotions()
    {
        $promotions = Promotions::all(); // Pastikan nama model sudah benar
        return view('admin.promotions.index', compact('promotions'));
    }

    public function createPromotion()
    {
        return view('admin.promotions.create');
    }

    public function storePromotion(Request $request)
    {
        $validatedData = $request->validate([
            'title' => 'required|string|max:255',
            'description' => 'required|string|max:1000', // Membatasi panjang deskripsi
            'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);

        // Simpan gambar dan data promotion
        $imagePath = $request->file('image')->store('promotions', 'public');
        $fileName = basename($imagePath);

        Promotions::create([
            'title' => $validatedData['title'],
            'description' => $validatedData['description'],
            'image' => $fileName,
        ]);
        return redirect()->route('admin.promotions')->with('success', 'Promotion created successfully.');
    }

    public function destroyPromotion($id)
    {
        $promotion = Promotions::findOrFail($id);
        Storage::delete('public/promotions/' . $promotion->image);
        $promotion->delete();

        return redirect()->route('admin.promotions')->with('success', 'Promotion deleted successfully!');
    }

    public function upload(Request $request)
    {
        $request->validate([
            'image' => 'required|image|mimes:jpeg,jpg,png,gif,svg|max:20480',
        ]);

        $image = $request->file('image');
        $image->storeAs('public/home_images', $image->hashName());

        Image::create([
            'path' => $image->hashName(),
        ]);

        return redirect()->route('admin.home')->with('success', 'Image uploaded successfully!');
    }

    public function deleteImage($id)
    {
        $image = Image::findOrFail($id);
        Storage::delete('public/home_images/' . $image->path);
        $image->delete();

        return redirect()->route('admin.home')->with('success', 'Image deleted successfully!');
    }
}
