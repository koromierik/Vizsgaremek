@extends('layouts.app')

@section('content')
    <div class="container">
        <h1>Search Results</h1>

        @if($movies->isEmpty())
            <p>No movies found for the given query.</p>
        @else
            <div class="row">
                @foreach($movies as $movie)
                    <div class="col-md-4">
                        <div class="card mb-4">
                            <img src="{{ asset($movie->poster_path) }}" class="card-img-top" alt="{{ $movie->title }}">
                            <div class="card-body">
                                <h5 class="card-title">{{ $movie->title }}</h5>
                                <p class="card-text">{{ $movie->overview }}</p>
                                <p class="card-text"><small class="text-muted">Release Date: {{ $movie->release_date }}</small></p>
                                <!-- Add more movie details as needed -->
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        @endif
    </div>
@endsection
