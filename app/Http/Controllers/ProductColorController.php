<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\Color;
use Illuminate\Http\Request;
use Illuminate\View\View;
use Illuminate\Support\Facades\Storage;

class ProductColorController extends Controller
{
    public function index(Product $product): View
    {
        $colors = $product->colors;
        return view('admin.productcolor.index', compact('product', 'colors'));
    }

    public function create(Product $product): View
    {
        return view('admin.productcolor.create', compact('product'));
    }

    public function store(Request $request, Product $product)
    {
        $request->validate([
            'color_name' => 'required|string',
            'color_realname' => 'required|string',
            'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);

        $color = new Color();
        $color->color_name = $request->input('color_name');
        $color->color_realname = $request->input('color_realname');

        
        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $imagePath = $image->store('public/colors');
            $color->image = basename($imagePath);
        }
        
        $product->colors()->save($color);

        return redirect()->route('admin.productcolor.index', $product)->with('success', 'Color added successfully.');
    }

    public function edit(Product $product, Color $color): View
    {
        return view('admin.productcolor.edit', compact('product', 'color'));
    }

    public function update(Request $request, Product $product, Color $color)
    {
        $request->validate([
            'color_name' => 'required|string',
            'color_realname' => 'required|string',
            'image' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);

        $color->color_name = $request->input('color_name');
        $color->color_realname = $request->input('color_realname');
        
        if ($request->hasFile('image')) {
            // Delete old image
            Storage::delete('public/colors/'.$color->image);

            $image = $request->file('image');
            $imagePath = $image->store('public/colors');
            $color->image = basename($imagePath);
        }

        $color->save();

        return redirect()->route('admin.productcolor.index', $product)->with('success', 'Color updated successfully.');
    }

    public function destroy(Product $product, Color $color)
    {
        // Delete image
        Storage::delete('public/storage/colors/'.$color->image);

        $color->delete();

        return redirect()->route('admin.productcolor.index', $product)->with('success', 'Color deleted successfully.');
    }
}
