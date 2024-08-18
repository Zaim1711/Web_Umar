<?php

namespace App\Http\Controllers;

use App\Models\Product; 
use Illuminate\View\View;
use Illuminate\Http\Request;
use Illuminate\Http\RedirectResponse;
use Illuminate\Support\Facades\Storage;
use App\Models\Promotions;

class ProductController extends Controller
{
     
    public function index(Request $request)
    {
        $search = $request->input('search');

        // Retrieve distinct car types
        $types = Product::select('jenis')->distinct()->pluck('jenis');

        // Filter products by the selected type
        $selectedType = $request->input('type');

        // Query untuk mendapatkan produk berdasarkan pencarian dan jenis
        $products = Product::when($search, function ($query, $search) {
                return $query->where('title', 'like', "%{$search}%");
            })
            ->when($selectedType, function ($query, $selectedType) {
                return $query->where('jenis', $selectedType);
            })
            ->paginate();

        // Pass data to the view
        return view('products.index', [
            'products' => $products,
            'types' => $types,
            'selectedType' => $selectedType
        ]);
    }

    

    public function create(): View
    {
        return view('admin.products.create');
    }

    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'title' => 'required|string|max:255',
            'description' => 'required|string',
            'price' => 'required|numeric',
            'type' => 'required|string|max:255',
            'harga' => 'required',
            'video_link' => 'nullable|url'
        ]);

        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $image->store('public/products');

            Product::create([
                'image' => $image->hashName(),
                'title' => $validatedData['title'],
                'description' => $validatedData['description'],
                'price' => $validatedData['price'],
                'type' => $validatedData['type'],
                'harga' => $validatedData['harga'],
                'video_link' => $validatedData['video_link']
            ]);

            return redirect()->route('admin.products')->with('success', 'Product created successfully.');
        }

        return back()->withErrors('Image upload failed.');
    }


    public function show(string $id): View
    {
        // Get product by ID
        $product = Product::findOrFail($id);
        $promotions = Promotions::all();
        $products = Product::all();// Mengambil 3 produk terbaru

        // Convert type and harga to arrays
        $types = explode(',', $product->type);
        $hargas = explode(',', $product->harga);

        // Render view with product, types, and hargas
        return view('products.show',['promotions' => $promotions ,'products' => $products,], compact('product', 'types', 'hargas'));
    }

    public function edit(string $id): View
    {
        $product = Product::findOrFail($id);
        return view('admin.products.edit', compact('product'));
    }

    public function update(Request $request, $id): RedirectResponse
    {
        $request->validate([
            'image'         => 'image|mimes:jpeg,jpg,png|max:2048',
            'title'         => 'required|min:5',
            'description'   => 'required|min:10',
            'price'         => 'required|numeric',
            'type'          => 'required',
            'harga'         => 'required',
            'video_link'    => 'nullable|url'
        ]);

        $product = Product::findOrFail($id);

        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $image->storeAs('public/products', $image->hashName());
            Storage::delete('public/products/'.$product->image);

            $product->update([
                'image'         => $image->hashName(),
                'title'         => $request->title,
                'description'   => $request->description,
                'price'         => $request->price,
                'type'          => $request->type,
                'harga'         => $request->harga,
                'video_link'    => $request->video_link
            ]);
        } else {
            $product->update([
                'title'         => $request->title,
                'description'   => $request->description,
                'price'         => $request->price,
                'type'          => $request->type,
                'harga'         => $request->harga,
                'video_link'    => $request->video_link
            ]);
        }

        return redirect()->route('admin.products')->with(['success' => 'Data Berhasil Diubah!']);
    }

    public function destroy($id): RedirectResponse
    {
        // Find the product by ID
        $product = Product::findOrFail($id);

        // Delete the image from storage
        Storage::delete('public/products/'.$product->image);

        // Delete the product record from the database
        $product->delete();

        // Redirect to the admin products page
        return redirect()->route('admin.products')->with('success', 'Data Berhasil Dihapus!');
    }
     // Method untuk menampilkan semua produk
    public function showAll(Request $request)
    {

        // Retrieve distinct car types
        $types = Product::select('jenis')->distinct()->pluck('jenis');

        // Filter products by the selected type
        $selectedType = $request->input('type');

        // Retrieve products with pagination
        $products = Product::when($selectedType, function ($query, $selectedType) {
            return $query->where('jenis', $selectedType);
        })->paginate();

        // Pass data to the view
        return view('products.index', [
            'products' => $products,
            'types' => $types,
            'selectedType' => $selectedType
        ]);
    }
// Method untuk menampilkan halaman admin
    public function admin()
    {
        $products = Product::latest()->paginate(10);
        return view('admin.products', compact('products'));
    }
    
}
