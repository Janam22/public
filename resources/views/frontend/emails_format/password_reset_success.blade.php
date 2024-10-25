<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Password Reset Successful</title>
    <style>
        /* Basic styling for the email */
        body {
            font-family: Arial, sans-serif;
            color: #333;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        .container {
            width: 100%;
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        .header {
            text-align: center;
            padding-bottom: 20px;
        }
        .header img {
            max-width: 150px;
        }
        .content {
            font-size: 16px;
            line-height: 1.5;
        }
        .button {
            display: inline-block;
            padding: 10px 20px;
            margin: 20px 0;
            font-size: 16px;
            color: #fff;
            background-color: #007bff;
            text-decoration: none;
            border-radius: 4px;
        }
        .footer {
            text-align: center;
            font-size: 12px;
            color: #888;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <img src="{{ url('public/storage/backend/company_logo/' . $company_logo_header) }}" alt="{{ $company_name }}">
        </div>
        <div class="content">
            <p>Dear Valued Customer,</p>
            <p>Congratulations! Your password reset request was successful.</p>
            <a href="{{ route('frontend.signin') }}" class="button">Login Now</a>
            <p>If you did not request this, please ignore this email.</p>
        </div>
        <div class="footer">
            <p>Thank you for choosing {{ $company_name }}.</p>
            <p>&copy; {{ date('Y') }} {{ $company_name }} All rights reserved.</p>
        </div>
    </div>
</body>
</html>
