<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Your Application Name</title>
    <!-- Add your CSS and JavaScript links here -->
</head>
<body>
    <header>
        <!-- Your header content here -->
        <h1>Your Application Name</h1>
        <nav>
            <!-- Your navigation links here -->
        </nav>
    </header>

    <main>
        @yield('content')
    </main>

    <footer>
        <!-- Your footer content here -->
        <p>&copy; {{ date('Y') }} Your Application Name. All rights reserved.</p>
    </footer>
</body>
</html>
