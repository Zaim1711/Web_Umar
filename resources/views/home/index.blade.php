@extends('index')

@section('content')
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Home - SantriKoding.com</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">  
    <link rel="stylesheet" href="/css/home/home.css">
</head>
<body>
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
                        </div>
                    </div>
                </a>
            </div>
        @endforeach
    </div>
</div>

<!-- Sales Info Section -->
<div class="parallax dealpar">
    <!-- Background Overlay -->
    <div class="dealay"></div>
    
    <div class="container clear">
        <div class="pack relat clear">
            <!-- Right Column -->
            <div class="ragen">
                <div class="foage clear">
                    <div class="trap">
                        <div class="bacgen">
                            <div class="hov">
                                <img src="{{ asset('images/profile.jpg') }}" width="80%">
                            </div>
                            <div class="agbio">
                                <strong class="bebio">Umar Danis</strong>
                                <div class="bio">
                                    "...Jangan ragu hubungi kami untuk mengetahui informasi promo, harga, &amp; program pembelian mobil Honda di bulan ini...."
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Right Column -->
        
            <!-- Left Column -->
            <div class="dag">
                <div class="ledag">
                    <!-- Title -->
                    <h2 class="prom">Ingin Info Lebih Cepat? Hubungi Kami Disini</h2>
                    <!-- Title -->
                    
                    <!-- Content -->
                    <div class="agco clear">
                        <!-- Left -->
                        <div class="dehalf">
                            <!-- Phone -->
                            <div class="hocall">
                                <div class="da ph">
                                    <i class="fa fa-phone"></i>
                                </div>
                                <div>
                                    <strong><a target="_blank" href="tel:082132698832">082132698832</a></strong> - <em>PHONE</em><br>
                                    <strong>082132698832</strong> - <em>WA</em>
                                </div>
                            </div>
                            
                            <!-- Email -->
                            <div class="hocall">
                                <div class="da en">
                                    <i class="fa fa-envelope-o"></i>
                                </div>
                                <div><em>Contact Email</em><br>
                                    <strong><a target="_blank" href="mailto:umar">email</a></strong>
                                </div>
                            </div>
                            
                            <!-- Whatsapp -->                        
                            <div class="hocall">
                                <div class="da wh">
                                    <i class="fab fa-whatsapp"></i>
                                </div>
                                <div><em>Whatsapp</em><br>
                                    <a target="_blank" class="demob" href="https://api.whatsapp.com/send?phone=6282132698832">
                                        <strong>082132698832</strong>
                                    </a>
                                    <a href="https://wa.me/6282132698832" class="btn btn-success">Contact via WhatsApp</a>
                                </div>
                            </div>
                        </div>
                        <!-- Left -->
                        
                        <!-- Right -->
                        <div class="dehalf">
                            <!-- Facebook -->
                            <div class="hocall">
                                <div class="da fb">
                                    <i class="fab fa-facebook"></i>
                                </div>
                                <div><em>Facebook</em><br></div>
                            </div>
                            
                            <!-- Twitter -->
                            <div class="hocall">
                                <div class="da tw">
                                    <i class="fab fa-twitter"></i>
                                </div>
                                <div><em>Twitter</em><br></div>
                            </div>
                            
                            <!-- Instagram -->            
                            <div class="hocall">
                                <div class="da in">
                                    <i class="fab fa-instagram"></i>
                                </div>
                                <div>
                                    <em>Instagram</em><br>
                                </div>
                            </div>
                        </div>
                        <!-- Right -->
                    </div>
                    <!-- Content -->
                    
                    <!-- Title -->
                    <h3 class="adds">Dealer Honda Surabaya</h3>
                    <!-- Title -->
                    
                    <div class="blog-content clear">
                        <p class="MsoNormal">
                            <a href="https://dealerhondasurabayapusat.com/">Honda Surabaya</a> - Selamat Datang di Dealer Honda Surabaya Center, Kami adalah Dealer resmi Honda Surabaya, yang beralamat di Jl. Jenderal Basuki Rachmat No.33 Surabaya. Kami melayani pembelian Mobil Honda untuk wilayah Surabaya dan sekitarnya baik itu Secara Cash/ kredit, kami Juga melayani tukar tambah mobil lama anda dengan Mobil Honda terbaru...
                        </p>
                    </div>
                </div>
            </div>
            <!-- Left Column -->
        </div>
    </div>
</div>


<!-- Products Section -->
<div class="container mt-5">
    <div class="section-header">
        <h3>Daftar Produk</h3>
    </div>
    <div class="row product-list">
        @foreach ($products as $index => $product)
            <div class="col-md-4 mb-4 product-item" data-page="{{ ceil(($index + 1) / 6) }}">
                <div class="card product-card">
                    <img src="{{ asset('/storage/products/'.$product->image) }}" class="card-img-top" alt="{{ $product->title }}">
                    <div class="card-body">
                        <h5 class="card-title">{{ $product->name }}</h5>
                        <div class="d-flex justify-content-between align-items-center">
                            <span class="price">{{ "Mulai " . "Rp " . number_format($product->price, 2, ',', '.') }}</span>
                            <a href="{{ route('products.show', $product->id) }}" class="btn btn-primary">Lihat Detail</a>
                        </div>
                    </div>
                </div>
            </div>
        @endforeach
    </div>
    <div class="pagination">
        <button class="page-btn" data-page="1">1</button>
        <button class="page-btn" data-page="2">2</button>
        <a href="{{ route('products.showAll') }}" class="btn btn_more">Lihat Lainnya</a>
    </div>
</div>

<script>
    document.addEventListener('DOMContentLoaded', function () {
        const productsPerPage = 6;
        const productItems = document.querySelectorAll('.product-item');
        const paginationButtons = document.querySelectorAll('.page-btn');

        function showPage(page) {
            productItems.forEach(item => {
                item.style.display = (item.getAttribute('data-page') == page) ? 'block' : 'none';
            });
        }

        paginationButtons.forEach(button => {
            button.addEventListener('click', function () {
                showPage(this.getAttribute('data-page'));
            });
        });

        showPage(1); // Show the first page by default
    });
</script>

</body>

</html>
@endsection