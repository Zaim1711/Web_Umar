@extends('admin.index')

@section('content')
<div class="container">
    <h1>Add Color to {{ $product->title }}</h1>

    @if (session('success'))
        <div class="alert alert-success">
            {{ session('success') }}
        </div>
    @endif

    <form action="{{ route('admin.productcolor.store', $product->id) }}" method="POST" enctype="multipart/form-data">
        @csrf
        <div class="mb-3">
            <label for="color_name" class="form-label">Color</label>
            <input type="text" class="form-control @error('color_name') is-invalid @enderror" id="color_name" name="color_name" value="{{ old('color_name') }}" required>
            @error('color_name')
                <div class="invalid-feedback">
                    {{ $message }}
                </div>
            @enderror
        </div>

        <div class="mb-3">
            <label for="color_realname" class="form-label">Color name</label>
            <input type="text" class="form-control @error('color_realname') is-invalid @enderror" id="color_realname" name="color_realname" value="{{ old('color_realname') }}" required>
            @error('color_realname')
                <div class="invalid-feedback">
                    {{ $message }}
                </div>
            @enderror
        </div>

        <div class="mb-3">
            <label for="image" class="form-label">Image</label>
            <input type="file" class="form-control @error('image') is-invalid @enderror" id="image" name="image" required>
            @error('image')
                <div class="invalid-feedback">
                    {{ $message }}
                </div>
            @enderror
        </div>

        <button type="submit" class="btn btn-primary">Add Color</button>
    </form>
</div>
@endsection
