<!-- resources/views/admin/layout.blade.php -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Admin Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            display: flex;
            margin: 0;
            height: 100vh;
            overflow: hidden;
        }
        .navbar {
            width: 250px;
            min-height: 100vh;
            padding: 20px;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }
        .content {
            flex: 1;
            padding: 20px;
            overflow-y: auto;
        }
        .navbar-brand {
            margin-bottom: 1rem;
        }
        .nav-item {
            margin-bottom: 0.5rem;
        }
    </style>
</head>
<body>

    <nav class="navbar navbar-dark bg-dark flex-column">
        <div>
            <a class="navbar-brand" href="#">Admin Panel</a>
            <ul class="nav flex-column">
                <li class="nav-item">
                    <a class="nav-link text-white" href="{{ route('admin.home') }}">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="{{ route('admin.products') }}">Products</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="{{ route('admin.promotions') }}">Promotions</a>
                </li>
            </ul>
        </div>
        <div>
            <!-- Optional footer or additional content here -->
        </div>
    </nav>

    <div class="content">
        @yield('content')
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
