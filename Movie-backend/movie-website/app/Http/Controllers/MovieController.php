<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Movie; // Import your Movie model

class MovieController extends Controller
{
    <?php

    namespace App\Http\Controllers;
    
    use Illuminate\Http\Request;
    use Illuminate\Support\Facades\Http;
    use App\Models\Movie;
    
    class MovieController extends Controller
    {
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
    }
}
