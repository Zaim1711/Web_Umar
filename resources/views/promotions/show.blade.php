@extends('index')

@section('content')
<div class="container mt-5">
    <div class="row">
        <div class="col-md-8">
            <div class="promotion-detail">
                <h2>{{ $promotion->title }}</h2>
                <img src="{{ asset('/storage/promotions/' . $promotion->image) }}" class="img-fluid mb-4" alt="{{ $promotion->title }}">
                <p>{{ $promotion->description }}</p>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card promo-sidebar">
                <div class="card-body">
                    <h5 class="card-title">Promo Details</h5>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item"><strong>Start Date:</strong> {{ $promotion->start_date }}</li>
                        <li class="list-group-item"><strong>End Date:</strong> {{ $promotion->end_date }}</li>
                        <li class="list-group-item"><strong>Discount:</strong> {{ $promotion->discount }}%</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection
