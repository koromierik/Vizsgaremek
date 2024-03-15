<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Storage;

class MovieController extends Controller
{
    public function search(Request $request)
    {
        // Validate the incoming request
        $request->validate([
            'query' => 'required|string|max:255',
        ]);

        // Make API request to fetch movie details based on search query
        $response = Http::get('https://api.themoviedb.org/3/search/movie', [
            'api_key' => env('4edef3f60810eaa4e509974f9a952743'),
            'query' => $request->input('query'),
        ]);

        // Extract movie data from API response
        $movies = $response->json()['results'];

        if (count($movies) > 0) {
            // Fetch details of the first movie
            $movieData = $movies[0];

            // Download poster image
            $imageUrl = 'https://image.tmdb.org/t/p/w500' . $movieData['poster_path'];
            $image = file_get_contents($imageUrl);
            $imageName = $movieData['title'] . '.jpg';

            // Save image to storage
            Storage::disk('public')->put('images/' . $imageName, $image);

            // Save movie details to database
            // Assuming you have a Movie model and a movies table
            $movie = new \App\Models\Movie();
            $movie->title = $movieData['title'];
            $movie->overview = $movieData['overview'];
            $movie->release_date = $movieData['release_date'];
            $movie->poster_path = 'images/' . $imageName; // Store the image path
            // Other movie details...
            $movie->save();

            return redirect()->back()->with('success', 'Movie added successfully.');
        } else {
            return redirect()->back()->with('error', 'No movies found for the given query.');
        }
    }
}
