<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Confirmation</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        .container {
            background-color: #ffffff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            margin: auto;
            padding: 20px;
        }
        .header {
            text-align: center;
            margin-bottom: 20px;
        }
        .header img {
            max-width: 100%;
            height: auto;
        }
        .content {
            margin-bottom: 20px;
        }
        h1, h2 {
            color: #333;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
        }
        table th, table td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        table th {
            background-color: #f2f2f2;
        }
        a {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 15px;
            background-color: #007BFF;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            text-align: center;
        }
        .footer {
            text-align: center;
            margin-top: 20px;
            font-size: 14px;
            color: #777;
        }
    </style>
</head>
<body>
    
    <div class="container">
        <div class="header">
            <img src="{{ url('public/storage/backend/company_logo/' . $company_logo_header) }}" alt="{{ $company_name }}">
        </div>
        
        <div class="content">
            <h1>Order Confirmation</h1>
            <p>Dear {{ $userDetails['userName'] }},</p>
            <p>Thank you for your order. Your order number is <strong>{{ $orderNumber }}</strong>.</p>
        
            <h2>Order Details:</h2>
            <table>
                <thead>
                    <tr>
                        <th>Product</th>
                        <th>Quantity</th>
                        <th>Unit Price</th>
                        <th>Final Price</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($orderItems as $item)
                        <tr>
                            <td>{{ $item['product_name'] }}</td>
                            <td>{{ $item['quantity'] }}</td>
                            <td>{{ number_format($item['unitPrice'], 2) }}</td>
                            <td>{{ number_format($item['finalPrice'], 2) }}</td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        
            <p>If you have any questions about your order, feel free to contact us.</p>
        
            <a href="{{ route('frontend.signin') }}">
                Track Order Status
            </a>
        
            <p>Thank you for shopping with us!</p>
        </div>
        
        <div class="footer">
            <p>Thank you for choosing {{ $company_name }}.</p>
            <p>&copy; {{ date('Y') }} {{ $company_name }}. All rights reserved.</p>
        </div>
    </div>
        
</body>
</html>
