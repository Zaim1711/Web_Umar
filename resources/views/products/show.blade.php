    @extends('index')

    @section('content')
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Show Product - SantriKoding.com</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
        <link rel="stylesheet" href="/css/product/show.css">
    </head>
    <body>
        <div class="container mt-5 mb-5">
            <img src="{{ asset('/storage/products/'.$product->image) }}" class="card-img-top" alt="{{ $product->title }}">
            <!-- Price Table -->
            <div class="section-header">
                <div class="table-responsive mb-4">
                    <table class="table table-bordered">
                        <thead class="table-dark">
                            <tr>
                                <th>Type</th>
                                <th>Harga</th>
                                <th>Contact</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($types as $index => $type)
                                <tr>
                                    <td>{{ $type }}</td>
                                    <td class="pr hr">{{ $hargas[$index] ?? 'N/A' }}</td>
                                    <td class="pr rg">
                                        <span>
                                            <a target="_blank" class="demob" href="https://web.whatsapp.com/send?phone=6282132698832&amp;text=Saya ingin info terbaru tentang%0aMobil *{{ $product->title }}*, {{ $type }} %0aHarga *{{ $hargas[$index] ?? 'N/A' }}* %0a{{ url()->current() }}">
                                                <i class="fab fa-whatsapp"></i> Chat
                                            </a>
                                        </span>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
            <!-- Product Details -->
            <div class="row">
                <div class="col-md-7">
                    <div class="product-details">
                        <h2 class="product-title">{{ $product->title }}</h2>
                        <p class="product-price">Rp {{ number_format($product->price, 0, ',', '.') }}</p>
                        <p class="product-description">{!! nl2br(e($product->description)) !!}</p>
                         <!-- Color Carousel -->
                        <div class="carousel-container1 mt-4">
                            <h3>Pilihan Warna</h3>
                            @if($product->colors && $product->colors->count() > 0)
                                <div id="colorCarousel" class="carousel slide color-carousel">
                                    <div class="carousel-inner1">
                                        @foreach ($product->colors as $index => $color)
                                            <div class="carousel-item {{ $index == 0 ? 'active' : '' }}">
                                                <img src="{{ asset('storage/colors/'.$color->image) }}" class="d-block w-100" alt="{{ $color->color_name }}">
                                                <div class="carousel-caption">
                                                    <p>{{ $color->color_realname }}</p>
                                                </div>
                                            </div>
                                        @endforeach
                                    </div>
                                    <button class="carousel-control-prev" type="button" data-bs-target="#colorCarousel" data-bs-slide="prev">
                                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                        <span class="visually-hidden">Previous</span>
                                    </button>
                                    <button class="carousel-control-next" type="button" data-bs-target="#colorCarousel" data-bs-slide="next">
                                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                        <span class="visually-hidden">Next</span>
                                    </button>
                                </div>
                                <!-- Custom Indicators -->
                                <div class="carousel-indicators1 mt-3 d-flex justify-content-center">
                                    @foreach ($product->colors as $index => $color)
                                        <button type="button" data-bs-target="#colorCarousel" data-bs-slide-to="{{ $index }}"
                                            class="{{ $index == 0 ? 'active' : '' }}"
                                            style="background-color: {{ $color->color_name }};" aria-label="{{ $color->color_name }}"></button>
                                    @endforeach
                                </div>
                            @else
                                <p>No colors available for this product.</p>
                            @endif
                        </div>
                        <!-- Video Section -->
                        @if ($product->video_link)
                            <div class="video-container">
                                <iframe src="{{ $product->video_link }}" frameborder="0" allowfullscreen></iframe>
                            </div>
                        @endif
                        <!-- Feature Details Table -->
                        @if ($product->details)
                            <table class="table table-bordered">
                                <thead class="table-dark">
                                    <tr>
                                        <th>Fitur</th>
                                        <th>Keterangan</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($product->details as $detail)
                                        <tr>
                                            <td>{{ $detail->feature }}</td>
                                            <td>{{ $detail->description }}</td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        @endif
                    </div>
                </div>
                <div class="col-md-5">
                    <div class="sales-section">
                        <!-- Sales Image and Contact Buttons -->
                        <div class="sales-image">
                            <img src="{{ asset('images/profile.jpg') }}" alt="Honda CR-V Hybrid">
                            <div class="contact-buttons">
                                <a class="deweb" target="_blank" href="https://web.whatsapp.com/send?phone=6282132698832&amp;text=Mohon informasi lebih detail tentang produk Honda"><i class="fab fa-whatsapp"></i></a>
                            </div>
                        </div>
                        <!-- Contact Info -->
                        <div class="contact-info">
                            <h2>Contact Us for More Information</h2>
                            <p><strong>Umar Danis</strong></p>
                            <p>"Segera Hubungi Kami Untuk Mengetahui Informasi Promo Harga Mobil Honda Surabaya..."</p>
                            <p><i class="fas fa-phone"></i> <a href="tel:6282132698832">082132698832</a></p>
                            <p><i class="fas fa-fax"></i> 082132698832</p>
                            <p><i class="fas fa-envelope"></i> <a href="mailto:danielkristiyono4@gmail.com">danielkristiyono4@gmail.com</a></p>
                            <div class="social-links">
                                <a href="https://www.facebook.com/profile.php?id=100075826906646&amp;mibextid=ZbWKwL" target="_blank"><i class="fab fa-facebook"></i> Facebook</a>
                                <a href="https://twitter.com/" target="_blank"><i class="fab fa-twitter"></i> Twitter</a>
                                <a href="https://www.instagram.com/hondasalessurabaya/" target="_blank"><i class="fab fa-instagram"></i> Instagram</a>
                            </div>
                        </div>
                    </div>
                    <!-- Promo Section -->
            <div class="section-header">
                <h3>Promo</h3>
            </div>
            <div class="row">
                @foreach ($promotions as $promotion)
                    <div class="col-md-4 mb-4">
                        <a href="{{ route('promotions.show', $promotion->id) }}">
                            <div class="card promo-card">
                                <img src="{{ asset('/storage/promotions/'.$promotion->image) }}" class="card-img-top" alt="{{ $promotion->title }}">
                                <div class="card-body">
                                    <h5 class="card-title">{{ $promotion->title }}</h5>
                                    <p class="card-text">{{ $promotion->description }}</p>
                                </div>
                            </div>
                        </a>
                    </div>
                @endforeach
            </div> 
          
        </div>
    </div>
    <br>
    <div class="section-header">
            <h3>Model Lainnya</h3>
        </div>
        
        <div class="carousel-container">
            <!-- Carousel for Other Models -->
            <div id="carouselExampleIndicators" class="carousel slide">
                <div class="carousel-inner">
                    @foreach($products->chunk(3) as $chunkIndex => $chunk)
                        <div class="carousel-item {{ $chunkIndex == 0 ? 'active' : '' }}">
                            <div class="row">
                                @foreach($chunk as $model)
                                    <div class="col-4 mb-4">
                                        <a href="{{ route('products.show', $model->id) }}" class="text-decoration-none">
                                            <div class="card">
                                                <img src="{{ asset('/storage/products/'.$model->image) }}" class="card-img-top" alt="{{ $model->title }}">
                                                <div class="card-body">
                                                    <h5 class="card-title">{{ $model->title }}</h5>
                                                    <p class="card-text">Mulai Rp {{ number_format($model->price, 0, ',', '.') }}</p>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>

            <!-- Custom Carousel Buttons -->
            <button class="carousel-btn carousel-btn-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                <i class="fas fa-chevron-left"></i>
            </button>
            <button class="carousel-btn carousel-btn-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                <i class="fas fa-chevron-right"></i>
            </button>
        </div>
    </div>
        <!-- Bootstrap Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
        <script>
        document.addEventListener('DOMContentLoaded', function () {
            const indicators = document.querySelectorAll('.carousel-indicators1 button');

            indicators.forEach(indicator => {
                const originalColor = indicator.style.backgroundColor; // Simpan warna asli

                indicator.addEventListener('click', function () {
                    // Reset all indicators to their original colors
                    indicators.forEach(btn => btn.style.backgroundColor = btn.getAttribute('data-original-color'));

                    // Change the clicked indicator to red
                    this.style.backgroundColor = 'data-original-color';
                });

                // Set a data attribute to store the original color
                indicator.setAttribute('data-original-color', originalColor);
            });
        });

        </script>
    </body>
    </html>
    @endsection
