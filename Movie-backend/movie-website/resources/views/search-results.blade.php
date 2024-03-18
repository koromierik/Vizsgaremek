<<<<<<< HEAD
<form action="{{ route('movies.search') }}" method="POST">
    @csrf
    <input type="text" name="query" placeholder="Enter movie title">
    <button type="submit">Search</button>
</form>
=======
<?php
use Illuminate\Support\Facades\Http;
use App\Models\Movie;

public function fetchAndStoreMovies(Request $request)
{
    $response = Http::get('https://api.themoviedb.org/3/search/movie', [
        'api_key' => '4edef3f60810eaa4e509974f9a952743',
        'query' => $request->input('query'),
    ]);

    $moviesData = $response->json()['results'];

    foreach ($moviesData as $movieData) {
        Movie::create([
            'title' => $movieData['title'],
            'overview' => $movieData['overview'],
            'release_date' => $movieData['release_date'],
            // Additional fields
        ]);
    }

    return "Movies fetched and stored successfully";
}
>>>>>>> 19f87f8f4242962dd534252b4df2fae48a39061e
