<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Honda Surabaya Center</title>
    <link rel="icon" href="{{ asset('images/logo_honda.png') }}" type="image/x-icon">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.0/font/bootstrap-icons.min.css" rel="stylesheet">
    <style>
        body {
            background: #f8f9fa;
            font-family: 'Poppins', sans-serif;
        }

        .navbar {
            background: linear-gradient(90deg, rgba(0, 61, 102, 1) 0%, rgba(0, 102, 204, 1) 100%);
            color: #fff;
            padding: 15px 0;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Subtle shadow */
        }

        .navbar-toggler {
            border: none;
        }

        .navbar-brand {
            flex: 1;
            display: flex;
            align-items: center;
        }

        .navbar-brand img {
            height: 50px;
            border-radius: 8px; /* Rounded corners for logo */
        }

        .navbar-nav {
            flex: 2;
            display: flex;
            justify-content: right;
        }

        .navbar-nav .nav-link {
            color: #fff !important;
            padding: 10px 10px;
            font-weight: 500;
            transition: background-color 0.3s ease, color 0.3s ease, transform 0.3s ease;
        }

        .navbar-nav .nav-link:hover {
            background-color: #0056b3; /* Darker blue on hover */
            border-radius: 5px;
            color: #fff !important;
            transform: scale(1.05); /* Slight zoom effect */
        }

        .navbar-nav .dropdown-menu {
            background-color: #003d66;
            border: none;
            border-radius: 0.5rem;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        .navbar-nav .dropdown-item:hover {
            background-color: #0056b3;
            color: #fff;
        }

        .content {
            flex: 1;
            padding: 20px;
            overflow-y: auto;
        }

        .footer {
            background-color: #003d66;
            color: #fff;
            padding: 20px;
            text-align: center;
        }

        .footer a {
            color: #fff;
            margin: 0 15px;
            text-decoration: none;
        }

        .footer a:hover {
            text-decoration: underline;
        }

        .map-container {
            margin-top: 20px;
            position: relative;
            height: 300px;
        }

        .map-container iframe {
            border: 0;
            width: 100%;
            height: 100%;
        }

        /* Floating WhatsApp Button */
        .whatsapp-button {
            position: fixed;
            bottom: 20px;
            right: 20px;
            background-color: #25D366;
            color: #fff;
            border-radius: 50%;
            width: 60px;
            height: 60px;
            display: flex;
            align-items: center;
            justify-content: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            font-size: 24px;
            text-align: center;
            z-index: 1000;
            transition: background-color 0.3s ease;
        }

        .whatsapp-button:hover {
            background-color: #128C7E;
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="/">
                <img src="{{ asset('images/logo.png') }}" alt="Logo">
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav mx-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="/">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('promotions.showAll') }}">Promotions</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('products.showAll') }}">Products</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Contact</a>
                    </li>
                </ul>
                <form class="d-flex ms-3" method="GET" action="{{ route('products.index') }}">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" name="search">
                    <button class="btn btn-outline-light" type="submit">Search</button>
                </form>
            </div>
        </div>
    </nav>

    <div class="content">
        @yield('content')
    </div>

    <!-- Footer -->
    <footer class="footer">
        <div class="container">
            <div class="footer-info">
                <p>&copy; 2024 Dealerhondasurabayapusat.com.</p>
                <p>Jl. Jenderal Basuki Rachmat No.33, Embong Kaliasin, Kec. Genteng, Surabaya, Jawa Timur 60271</p>
            </div>
            <div class="map-container">
                <iframe
                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3957.786358784054!2d112.73879501107089!3d-7.265137271353286!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd7f94c5cd66cc7%3A0x1e543c6b695b8b99!2sHonda%20Surabaya%20Center!5e0!3m2!1sid!2sid!4v1722203164660!5m2!1sid!2sid" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"
                    allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
        </div>
    </footer>

    <!-- Floating WhatsApp Button -->
    <a href="https://wa.me/send?phone=6282132698832&amp;text=Mohon informasi lebih detail tentang produk Honda" class="whatsapp-button" target="_blank">
        <i class="bi bi-whatsapp"></i>
    </a>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Debugging Script -->
    <script>
        document.addEventListener("DOMContentLoaded", function () {
            const navbarToggler = document.querySelector('.navbar-toggler');
            navbarToggler.addEventListener('click', function () {
                const target = document.querySelector(navbarToggler.getAttribute('data-bs-target'));
                if (target.classList.contains('show')) {
                    target.classList.remove('show');
                } else {
                    target.classList.add('show');
                }
            });
        });
    </script>
</body>
</html>
