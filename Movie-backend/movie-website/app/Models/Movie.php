<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Movie extends Model
{
    protected $fillable = [
        'title',
        'overview',
        'release_date',
        'poster_path',
        // Add other fields as needed
    ];
}
