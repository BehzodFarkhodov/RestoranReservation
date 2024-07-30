<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Here you can create your personal restaurant account</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('https://img.travelbugphilippines.com/img/united-states/michelin-starred-restaurants-in-las-vegas.jpg');
            background-size: cover;
            background-position: center;
            color: #333;
            text-align: center;
            padding: 50px;
            background-attachment: fixed; /* Fixes background image on scroll */
        }
        .container {
            background-color: rgba(255, 255, 255, 0.8); /* White background with transparency */
            border-radius: 15px;
            padding: 30px;
            display: inline-block;
            margin-top: 50px;
        }
        .button {
            background-color: #ffdd00;
            color: white;
            border: none;
            border-radius: 25px;
            padding: 15px 30px;
            font-size: 16px;
            cursor: pointer;
            margin: 10px auto; /* Center the buttons and add space between them */
            transition: background-color 0.3s ease;
            text-decoration: none;
            display: block;
            width: 250px; /* Fixed width for all buttons */
        }
        .button:hover {
            background-color: #ffd700;
        }
        .home-button {
            background-color: white; /* White background for the Home button */
            color: #333; /* Dark text color */
            border: 2px solid #ffdd00; /* Border matching the button color */
        }
        .home-button:hover {
            background-color: #f4f4f4; /* Slightly darker shade on hover */
        }
        a {
            text-decoration: none;
            color: inherit;
        }
    </style>
</head>
<body>

<a class="button home-button" href="${pageContext.request.contextPath}/">Home</a>
<div class="container">
    <h1>Here you can create your personal restaurant account</h1>
    <a class="button" href="${pageContext.request.contextPath}/create-own-restaurant">Create Your Restaurant Account</a>
    <a class="button" href="${pageContext.request.contextPath}/create-own-product">Create Restaurant's Product</a>
    <a class="button" href="${pageContext.request.contextPath}/show-all-users-restaurant">My All Restaurant Account</a>
    <a class="button" href="${pageContext.request.contextPath}/show-restaurant-order">Show Restaurant's Orders</a>

    <a class="button" href="${pageContext.request.contextPath}/show-restaurant-reservation-order">Show Restaurant's Reservation Orders</a>
</div>
</body>
</html>
