<head>
    <meta charset="UTF-8">
    <!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge"><![endif]-->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="author" content="">
    <meta name="description" content="Shop a wide variety of products including WOW Popcorn, N&H Chicken Wings, Butter Cookies, Pampers Pants, Mayonnaise, Jams, Peanut Butter, Cheese, Soups, and more at OMSOK.">
    <meta name="keywords" content="WOW Popcorn, N&H Chicken Wings, Butter Cookies, Pampers Pants, Mayonnaise, Jams, Peanut Butter, Cheese, Soups, online shopping, OMSOK">
    <meta name="robots" content="index, follow">
    <meta name="author" content="OMSOK">
    <meta name="copyright" content="Copyright © 2024 OMSOK">

    <!-- Open Graph / Facebook -->
    <meta property="og:type" content="website">
    <meta property="og:url" content="https://www.omsok.com">
    <meta property="og:title" content="OMSOK - Online Shopping for Every Product You Need">
    <meta property="og:description" content="Explore a diverse range of products including WOW Popcorn, N&H Chicken Wings, Butter Cookies, Pampers Pants, Mayonnaise, Jams, Peanut Butter, Cheese, Soups, and more at OMSOK.">
    <meta property="og:image" content="https://www.omsok.com/images/og-image.jpg">
    <meta property="og:image:alt" content="OMSOK Logo">

    <!-- Twitter -->
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:url" content="https://www.omsok.com">
    <meta name="twitter:title" content="OMSOK - Online Shopping for Every Product You Need">
    <meta name="twitter:description" content="Explore a diverse range of products including WOW Popcorn, N&H Chicken Wings, Butter Cookies, Pampers Pants, Mayonnaise, Jams, Peanut Butter, Cheese, Soups, and more at OMSOK.">
    <meta name="twitter:image" content="https://www.omsok.com/images/twitter-card.jpg">
    <!--<meta name="csrf-token" content="{{ csrf_token() }}">-->
    <link href="{{ asset('public/storage/backend/company_logo/' . $websitedata->company_logo_footer) }}" rel="shortcut icon">
    <title>{{ $websitedata->company_name }}</title>
    <!--Dynamically change the theme-->
    <style>
        :root {
            --dynamic-header-color: {{ $websitedata->header_theme_color }};
            --dynamic-footer-color: {{ $websitedata->footer_theme_color }};
            --dynamic-text-color: {{ $websitedata->text_theme_color }};
            --dynamic-hover-color: {{ $websitedata->hover_effect_color }};
        }
    </style>
    
    <!--=============== BOXICONS ===============-->
    <!--<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css" />-->
    

    <link rel="stylesheet" href="{{ asset('public/client-side/css/explore.css') }}">
    <link rel="stylesheet" href="{{ asset('public/client-side/css/navbar.css') }}">
    <!-- carousal asset cdn   -->
    <link rel="stylesheet" href="{{ asset('public/client-side/css/crousal.css') }}">
    <!-- account css  -->
    <link rel="stylesheet" href="{{ asset('public/client-side/css/account.css') }}">
    <link href="https://cdn.jsdelivr.net/npm/remixicon@4.3.0/fonts/remixicon.css" rel="stylesheet" />
    <!--====== Vendor Css ======-->
    <link rel="stylesheet" href="{{ asset('public/client-side/css/vendor.css') }}">
    


    
    <!--====== Utility-Spacing ======-->
    <link rel="stylesheet" href="{{ asset('public/client-side/css/utility.css') }}">
    <!--bootstrap -->
    <!--<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"-->
    <!--integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">-->
        <link rel="stylesheet" href="{{ asset('public/client-side/css/bootstrap.css') }}">
    
    <!--====== App ======-->
    <link rel="stylesheet" href="{{ asset('public/client-side/css/app.css') }}">

</head>