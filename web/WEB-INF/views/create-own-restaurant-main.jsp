<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Here you can create your personal restaurant account</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
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
            margin: 0;
        }
        .container {
            border-radius: 15px;
            padding: 30px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent white background */
            margin-top: 80px; /* Increased top margin to avoid overlap with the home button */
        }
        .button {
            background-color: #ffdd00;
            color: black; /* Changed text color to black */
            border: none;
            border-radius: 15px;
            padding: 12px 25px;
            font-size: 14px;
            cursor: pointer;
            margin: 10px; /* Margin around buttons */
            transition: background-color 0.3s ease, transform 0.3s ease;
            text-decoration: none;
            display: block;
            width: 100%; /* Full width within the column */
        }
        .button:hover {
            background-color: #ffd700;
            transform: scale(1.05);
        }
        .home-button {
            background-color: #ffdd00; /* Full yellow background for the Home button */
            color: black; /* Changed text color to black */
            border: none; /* No border */
            font-size: 16px; /* Slightly larger font size */
            padding: 15px 30px; /* Adjusted padding */
        }
        .home-button:hover {
            background-color: #ffd700; /* Slightly darker shade on hover */
        }
        .home-button-container {
            position: absolute;
            top: 20px;
            left: 20px;
        }
        .button-row {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 15px; /* Space between buttons */
        }
        .button-row .col-md-6 {
            flex: 1 0 45%; /* Allow buttons to take up half the row */
        }
        @media (max-width: 768px) {
            .button-row .col-md-6 {
                flex: 1 0 100%; /* Stack buttons on small screens */
            }
        }
    </style>
</head>
<body>
<div class="home-button-container">
    <a class="btn button home-button" href="${pageContext.request.contextPath}/">Home</a>
</div>
<div class="container">
    <h1 class="mb-4">Here you can create your personal restaurant account</h1>
    <div class="button-row row">
        <div class="col-md-6">
            <a class="btn button" href="${pageContext.request.contextPath}/create-own-restaurant">Create Your Restaurant Account</a>
        </div>
        <div class="col-md-6">
            <a class="btn button" href="${pageContext.request.contextPath}/create-own-product">Create Restaurant's Product</a>
        </div>
        <div class="col-md-6">
            <a class="btn button" href="${pageContext.request.contextPath}/show-all-users-restaurant">My All Restaurant Accounts</a>
        </div>
<%--        <div class="col-md-6">--%>
<%--            <a class="btn button" href="${pageContext.request.contextPath}/show-restaurant-order">Show Restaurant's Orders</a>--%>
<%--        </div>--%>
<%--        <div class="col-md-6">--%>
<%--            <a class="btn button" href="${pageContext.request.contextPath}/show-restaurant-reservation-order">Show Restaurant's Reservation Orders</a>--%>
<%--        </div>--%>
<%--        <div class="col-md-6">--%>
<%--            <a class="btn button" href="${pageContext.request.contextPath}/show-restaurant-comments?id=${restaurant.id}">Show Restaurant's Comments</a>--%>
<%--        </div>--%>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
