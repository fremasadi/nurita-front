<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title inertia>Nurita</title>
        <link rel="icon" type="image/png" href="/assets/icons/ic_logo_favicon.png">
        <link rel="shortcut icon" type="image/png" href="/assets/icons/ic_logo_favicon.png">
        <link rel="apple-touch-icon" href="/assets/icons/ic_logo_favicon.png">

        @vite(['resources/css/app.css', 'resources/js/app.js'])
        @inertiaHead
    </head>
    <body class="font-sans antialiased">
        @inertia
    </body>
</html>
