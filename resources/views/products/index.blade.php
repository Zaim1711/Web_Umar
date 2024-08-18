@extends('index')

@section('content')
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>All Products - SantriKoding.com</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/css/product/index.css">
</head>
<body>
    <!-- Header -->
    <header class="header">
        <div class="container">
            <h1>Explore Our Latest Products</h1>
            <p>Find the perfect item for you from our extensive collection!</p>
        </div>
    </header>

    <!-- Notification Area -->
    <div class="container">
        <div class="notification">
            <h4>Special Announcement</h4>
            <p>Exciting new products are coming soon! Stay tuned for more updates.</p>
        </div>
    </div>

    <!-- Filter -->
    <div class="container mt-4">
        <div class="row g-1"> <!-- `g-1` mengurangi jarak antara kolom -->
            @foreach($types as $type)
                <div class="col-auto">
                    <a href="{{ route('products.index', ['type' => $type]) }}" class="btn btn-primary {{ $selectedType == $type ? 'active' : '' }}">
                        {{ $type }}
                    </a>
                </div>
            @endforeach
            <div class="col-auto">
                <a href="{{ route('products.index') }}" class="btn btn-secondary {{ $selectedType === null ? 'active' : '' }}">
                    All Types
                </a>
            </div>
        </div>
    </div>

    <!-- Products -->
    <div class="container mt-5">
         <div class="section-header">
                <h3></h3>
            </div>
        <div class="row">
            @foreach ($products as $product)
                <div class="col-md-4 mb-4">
                    <div class="card">
                        <img src="{{ asset('/storage/products/'.$product->image) }}" class="card-img-top" alt="{{ $product->title }}">
                        <div class="card-body">
                            <h5 class="card-title">{{ $product->title }}</h5>
                            <p class="card-text">{{ "Rp " . number_format($product->price, 2, ',', '.') }}</p>
                            <a href="{{ route('products.show', $product->id) }}" class="btn btn-primary">View Details</a>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
@endsection
