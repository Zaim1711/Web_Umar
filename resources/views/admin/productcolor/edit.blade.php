@extends('admin.index')

@section('content')
<div class="container">
    <h1>Edit Color for {{ $product->title }}</h1>

    @if (session('success'))
        <div class="alert alert-success">
            {{ session('success') }}
        </div>
    @endif

    <form action="{{ route('admin.productcolor.update', [$product->id, $color->id]) }}" method="POST" enctype="multipart/form-data">
        @csrf
        @method('PUT')

        <div class="mb-3">
            <label for="color_name" class="form-label">Color</label>
            <input type="text" class="form-control @error('color_name') is-invalid @enderror" id="color_name" name="color_name" value="{{ old('color_name', $color->color_name) }}" required>
            @error('color_name')
                <div class="invalid-feedback">
                    {{ $message }}
                </div>
            @enderror
        </div>

        <div class="mb-3">
            <label for="color_realname" class="form-label">Color Name</label>
            <input type="text" class="form-control @error('color_realname') is-invalid @enderror" id="color_realname" name="color_realname" value="{{ old('color_realname', $color->color_realname) }}" required>
            @error('color_realname')
                <div class="invalid-feedback">
                    {{ $message }}
                </div>
            @enderror
        </div>

        <div class="mb-3">
            <label for="image" class="form-label">Image (Leave blank to keep current image)</label>
            <input type="file" class="form-control @error('image') is-invalid @enderror" id="image" name="image">
            @error('image')
                <div class="invalid-feedback">
                    {{ $message }}
                </div>
            @enderror
        </div>

        <div class="mb-3">
            <img src="{{ Storage::url('public/colors/' . $color->image) }}" alt="{{ $color->color_name }}" style="width: 100px;">
        </div>

        <button type="submit" class="btn btn-primary">Update Color</button>
    </form>
</div>
@endsection
