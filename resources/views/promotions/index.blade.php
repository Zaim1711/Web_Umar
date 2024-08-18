 @extends('index')

@section('content')
    <style>
        .promo-card, .car-card {
            border-radius: 15px;
            overflow: hidden;
            border: none;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .promo-card img, .car-card img {
            object-fit: cover;
            height: 250px;
            border-radius: 15px;
        }

        .promo-card:hover, .car-card:hover {
            transform: scale(1.05);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }

        .promo-card .card-body, .car-card .card-body {
            background-color: #fff;
        }

        .promo-card .card-title, .car-card .card-title {
            font-size: 1.25rem;
            font-weight: bold;
        }

        .promo-card .card-text, .car-card .card-text {
            font-size: 1rem;
        }

    </style>
 <!-- Hero Carousel -->
    <div id="heroCarousel" class="carousel slide hero-slider" data-bs-ride="carousel" data-bs-interval="2000">
        <div class="carousel-inner">
            @foreach ($images as $index => $image)
                <div class="carousel-item {{ $index == 0 ? 'active' : '' }}">
                    <img src="{{ Storage::url('home_images/' . $image->path) }}" alt="Image">
                </div>
            @endforeach
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#heroCarousel" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#heroCarousel" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>

    <!-- Promo Section -->
      <div class="container mt-5">
        <div class="section-header">
            <h3>Promo Terbaru</h3>
        </div>
        <div class="row">
             @foreach ($promotions as $promotion)
                <div class="col-md-4 mb-4">
                    <a href="{{ route('promotions.show', $promotion->id) }}">
                        <div class="card promo-card">
                            <img src="{{ asset('/storage/promotions/'.$promotion->image) }}" class="card-img-top" alt="{{ $promotion->title }}">
                            <div class="card-body">
                                <h5 class="card-title">{{ $promotion->title }}</h5>
                            </div>
                        </div>
                    </a>
                </div>
            @endforeach
        </div>
    </div>
@endsection