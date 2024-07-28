<%--
  Created by IntelliJ IDEA.
  User: Victus
  Date: 7/23/2024
  Time: 10:38 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin Main Menu</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            color: #333;
            text-align: center;
            padding: 50px;
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

<h1>Admin Main Menu</h1>

<button class="button"><a href="${pageContext.request.contextPath}/create-restaurant">Add Restaurant</a></button>
<button class="button"><a href="${pageContext.request.contextPath}/create-product">Add Product</a></button>

</body>
</html>
