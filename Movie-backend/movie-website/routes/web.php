<?php

use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;
<<<<<<< HEAD
use App\Http\Controllers\HomeController;
use App\Http\Controllers\MovieController;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use Illuminate\Http\Request;
use App\Models\Movie;
use App\Models\User;
use App\Models\Comment;
=======
use App\Http\Controllers\MovieController;
>>>>>>> 19f87f8f4242962dd534252b4df2fae48a39061e

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

<<<<<<< HEAD
/*Route::get('/', function () {
    
    $movies = DB::table('movies')->get();

=======
Route::get('/', function () {
>>>>>>> 19f87f8f4242962dd534252b4df2fae48a39061e
    return view('welcome');
});*/

<<<<<<< HEAD
//Route::get('/', [HomeController::class, 'index']);
Route::post('/movies/search', [MovieController::class, 'search'])->name('movies.search');
=======
Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

Route::get('/test-movies-view', function () {
    $movies = App\Models\Movie::all(); // Assuming you have a Movie model
    return view('search-results', compact('movies'));
});

Route::get('/fetch-movies', [MovieController::class, 'fetchAndStoreMovies']);

require __DIR__.'/auth.php';
>>>>>>> 19f87f8f4242962dd534252b4df2fae48a39061e
