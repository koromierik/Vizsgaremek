<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{ $movie->title }}</title>
</head>
<body>
    <h1>{{ $movie->title }}</h1>
    <p><strong>Overview:</strong> {{ $movie->overview }}</p>
    <p><strong>Release Date:</strong> {{ $movie->release_date }}</p>
    <!-- Add more details as needed -->
</body>
</html>
