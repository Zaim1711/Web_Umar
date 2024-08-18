<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\PromotionsController;
use App\Http\Controllers\ProductColorController;

// Public routes
Route::get('/', [HomeController::class, 'index'])->name('index');

// Promotions routes
Route::get('/promotions', [PromotionsController::class, 'showAll'])->name('promotions.showAll');
Route::get('/promotions/{id}', [PromotionsController::class, 'show'])->name('promotions.show');

// Product routes
Route::get('/products', [ProductController::class, 'index'])->name('products.index');
Route::get('/products/list', [ProductController::class, 'showAll'])->name('products.showAll');
Route::get('/product/{title}', [ProductController::class, 'show'])->name('products.show');
Route::get('/products/create', [ProductController::class, 'create'])->name('products.create');
Route::post('/products', [ProductController::class, 'store'])->name('products.store');
Route::get('/products/{id}/edit', [ProductController::class, 'edit'])->name('products.edit');
Route::put('/products/{id}', [ProductController::class, 'update'])->name('products.update');
Route::delete('/products/{id}', [ProductController::class, 'destroy'])->name('products.destroy');


// Admin routes
Route::prefix('admin')->name('admin.')->group(function () {
    Route::get('/', [AdminController::class, 'home'])->name('home');
    Route::post('/upload', [AdminController::class, 'upload'])->name('upload');
    Route::delete('/delete-image/{id}', [AdminController::class, 'deleteImage'])->name('deleteImage');
    Route::get('/products', [AdminController::class, 'products'])->name('products');
    Route::get('/promotions', [AdminController::class, 'promotions'])->name('promotions');
    Route::get('/promotions/create', [AdminController::class, 'createPromotion'])->name('promotions.create');
    Route::post('/promotions', [AdminController::class, 'storePromotion'])->name('promotions.store');
    Route::delete('/promotions/{id}', [AdminController::class, 'destroyPromotion'])->name('promotions.destroy');
    Route::get('product/{product}/colors', [ProductColorController::class, 'index'])->name('productcolor.index');
    Route::get('product/{product}/colors/create', [ProductColorController::class, 'create'])->name('productcolor.create');
    Route::post('product/{product}/colors', [ProductColorController::class, 'store'])->name('productcolor.store');
    Route::get('product/{product}/colors/{color}/edit', [ProductColorController::class, 'edit'])->name('productcolor.edit');
    Route::put('product/{product}/colors/{color}', [ProductColorController::class, 'update'])->name('productcolor.update');
    Route::delete('product/{product}/colors/{color}', [ProductColorController::class, 'destroy'])->name('productcolor.destroy');
});
