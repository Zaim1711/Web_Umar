<?php
namespace App\Http\Controllers;

use App\Models\Promotions;
use Illuminate\Http\Request;
use App\Models\Home;
use App\Models\Image;

class PromotionsController extends Controller
{
    public function index()
    {
        $promotions = Promotions::all();
        $images = Image::all();
        return view('promotions.index',['images' => $images,],compact('promotions'));
    }

    public function showAll()
    {
        $promotions = Promotions::all();
        $images = Image::all();
        return view('promotions.index', ['images' => $images,], compact('promotions'));
    }
     public function show($id)
    {
        $promotion = Promotions::findOrFail($id);
        return view('promotions.show', compact('promotion'));
    }
}

