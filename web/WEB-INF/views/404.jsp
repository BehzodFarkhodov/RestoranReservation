<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Page Not Found</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: url('https://get.wallhere.com/photo/trees-Pacific-Ocean-beach-balcony-resort-Caribbean-cottage-vacation-estate-villa-property-real-estate-eco-hotel-32200.jpg') no-repeat center center fixed;
            background-size: cover;
            text-align: center;
            padding: 50px;
            color: white;
        }
        .container {
            background-color: rgba(0, 0, 0, 0.7);
            padding: 30px;
            border-radius: 10px;
            display: inline-block;
            margin: 50px auto;
        }
        .container img {
            width: 150px;
            margin-bottom: 20px;
        }
        h1 {
            color: #f7b600;
            font-size: 48px;
            margin: 20px 0;
        }
        p {
            font-size: 18px;
        }
        a {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #f7b600;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s;
        }
        a:hover {
            background-color: #d19e00;
        }
    </style>
</head>
<body>
<div class="container">
    <img src="https://cdn4.iconfinder.com/data/icons/gray-user-management/512/search-1024.png" alt="Not Found">
    <h1>Please register on the site</h1>
    <p>You have not registered on the site yet. Please register or return to the main page.</p>
    <a href="${pageContext.request.contextPath}/register">Register</a>
</div>
</body>
</html>
