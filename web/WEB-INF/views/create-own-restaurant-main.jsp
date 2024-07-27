<%--
  Created by IntelliJ IDEA.
  User: z.farhodov
  Date: 27.07.2024
  Time: 12:32
  To change this template use File | Settings | File Templates.
--%>
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
            margin: 10px;
            transition: background-color 0.3s ease;
            text-decoration: none;
        }
        .button:hover {
            background-color: #ffd700;
        }
        a {
            text-decoration: none;
            color: inherit;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="${pageContext.request.contextPath}/">Home</a>
</nav>
<div class="container">
    <h1>Here you can create your personal restaurant account</h1>
    <a class="button" href="${pageContext.request.contextPath}/create-own-restaurant">Create Your Restaurant Account</a>
    <a class="button" href="${pageContext.request.contextPath}/create-own-product">Create Restaurant's Product</a>
    <a class="button"href="${pageContext.request.contextPath}/show-all-users-restaurant">My All Restaurant Account</a>
    <a class="button" href="${pageContext.request.contextPath}/show-restaurant-order">Show Restaurant's Orders</a>
</div>
</body>
</html>

