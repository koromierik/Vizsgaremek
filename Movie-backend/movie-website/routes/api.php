<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\MovieController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\MovieLoaderController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
Route::get('/home', 'HomeController@index'); // Home page

//Route::get('/movies', 'MovieController@index'); // Movie list
Route::get('/movies/{id}', 'MovieController@show'); // Movie details
Route::post('/movies/search', [MovieController::class, 'fetchAndStoreMovies'])->name('movies.search');


// Authentication routes
Route::post('/login', [AuthController::class, 'login']);
Route::post('/register', [AuthController::class, 'register']);
Route::post('/logout', [AuthController::class, 'logout']);

// User profile routes
Route::get('/profile', 'UserController@profile')->middleware('auth:api');
Route::put('/profile', 'UserController@updateProfile')->middleware('auth:api');

// Admin routes
Route::group(['middleware' => ['auth:api', 'admin']], function () {
    Route::post('/movies', 'MovieController@store'); // Add movie (admin only)
    Route::put('/movies/{id}', 'MovieController@update'); // Update movie (admin only)
    Route::delete('/movies/{id}', 'MovieController@destroy'); // Delete movie (admin only)
});

// Movie rating and commenting routes
Route::post('/movies/{id}/rate', 'MovieController@rateMovie')->middleware('auth:api');
Route::post('/movies/{id}/comment', 'MovieController@addComment')->middleware('auth:api');
Route::delete('/comments/{id}', 'CommentController@destroy')->middleware('auth:api');

// Additional routes for other components (if needed)
Route::get('/load-movies', [MovieLoaderController::class, 'loadMovies']);
Route::get('/movies', [MovieController::class, 'showMovies'])->name('show.movies');