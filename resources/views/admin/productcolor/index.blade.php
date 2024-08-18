@extends('admin.index')

@section('content')
<div class="container">
    <h1>Colors for {{ $product->title }}</h1>

    @if (session('success'))
        <div class="alert alert-success">
            {{ session('success') }}
        </div>
    @endif

    <a href="{{ route('admin.productcolor.create', $product->id) }}" class="btn btn-primary mb-3">Add New Color</a>

    <table class="table">
        <thead>
            <tr>
                <th>#</th>
                <th>Color</th>
                <th>Color Name</th>
                <th>Image</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($colors as $color)
                <tr>
                    <td>{{ $loop->iteration }}</td>
                    <td>{{ $color->color_name }}</td>
                    <td>{{ $color->color_realname }}</td>
                    <td>
                        <img src="{{asset('/storage/colors/'.$color->image) }}" alt="{{ $color->color_name }}" style="width: 100px;">
                    </td>
                    <td>
                        <a href="{{ route('admin.productcolor.edit', [$product->id, $color->id]) }}" class="btn btn-warning btn-sm">Edit</a>
                        <form action="{{ route('admin.productcolor.destroy', [$product->id, $color->id]) }}" method="POST" style="display:inline;">
                            @csrf
                            @method('DELETE')
                            <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure?')">Delete</button>
                        </form>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
</div>
@endsection
