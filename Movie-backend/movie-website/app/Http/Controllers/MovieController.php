<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Movie; // Import your Movie model

class MovieController extends Controller
{
    public function search(Request $request)
    {
        // Validate the incoming request
        $request->validate([
            'query' => 'required|string|max:255',
        ]);

        // Search for movies in the database based on the title
        $movies = Movie::where('title', 'like', '%' . $request->input('query') . '%')->get();

        if ($movies->isEmpty()) {
            return redirect()->back()->with('error', 'No movies found for the given query.');
        }

        return view('search-results', compact('movies'));
    }
}
