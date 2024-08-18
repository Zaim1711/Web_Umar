<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\Image;
use Illuminate\Support\Facades\Storage;
use Illuminate\Http\RedirectResponse;
use App\Models\Promotions;

class HomeController extends Controller
{
    public function index()
    {
        // Ambil data produk terbaru, sesuaikan dengan kebutuhan Anda
        $products = Product::all();// Mengambil 3 produk terbaru
        $images = Image::all();
        $promotions = Promotions::all(); // Assuming you have a Promotion model
        
        return view('home.index', [
            'products' => $products,
            'images' => $images,
            'promotions' => $promotions
        ]);
    }

    public function upload(Request $request): RedirectResponse
    {
        // Validasi form
        $request->validate([
            'image' => 'required|image|mimes:jpeg,jpg,png|max:2048',
        ]);

        // Upload gambar
        $image = $request->file('image');
        $image->storeAs('public/home_images', $image->hashName());

        // Simpan informasi gambar ke database
        Image::create([
            'path' => $image->hashName(),
        ]);

        return redirect()->route('admin.home')->with('success', 'Image uploaded successfully!');
    }

    public function deleteImage($id): RedirectResponse
    {
        $image = Image::findOrFail($id);
        Storage::delete('public/home_images/' . $image->path);
        $image->delete();

        return redirect()->route('admin.home')->with('success', 'Image deleted successfully!');
    }

    public function admin()
    {
        $images = Image::all();
        return view('admin.home.index', compact('images'));
    }
}
