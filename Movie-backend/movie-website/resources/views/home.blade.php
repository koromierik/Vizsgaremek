<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
</head>
<body>
    <h1>Welcome to Movie Rating App</h1>

     @if($movies)
        <h2>Ajánlott film</h2>
        <h3>Cím: {{ $movies->title }}</h3>
        <p>Leírás: {{ $movies->overview }}</p>
    @else
        <p>No featured movie available.</p>
    @endif


    <!-- Add more content as needed -->
</body>
</html>
