@extends('admin.index')

@section('content')
    <h1>Admin Home</h1>
    <p>Welcome to the admin dashboard.</p>

    <!-- Upload Form -->
    <form action="{{ route('admin.upload') }}" method="POST" enctype="multipart/form-data">
        @csrf
        <div class="mb-3">
            <label for="image" class="form-label">Upload Image</label>
            <input type="file" class="form-control" id="image" name="image" required>
        </div>
        <button type="submit" class="btn btn-primary">Upload</button>
    </form>

    <!-- Display Uploaded Images -->
    <h2 class="mt-5">Uploaded Images</h2>
    @if(session('success'))
        <div class="alert alert-success">
            {{ session('success') }}
        </div>
    @endif
    <table class="table">
        <thead>
            <tr>
                <th>Image</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($images as $image)
                <tr>
                    <td><img src="{{ Storage::url('home_images/' . $image->path) }}" alt="Image" style="width: 150px;"></td>
                    <td>
                        <!-- Delete Form -->
                        <form action="{{ route('admin.deleteImage', $image->id) }}" method="POST" onsubmit="return confirm('Are you sure you want to delete this image?');">
                            @csrf
                            @method('DELETE')
                            <button type="submit" class="btn btn-danger">Delete</button>
                        </form>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
@endsection
