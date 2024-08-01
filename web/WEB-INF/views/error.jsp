<%--
  Created by IntelliJ IDEA.
  User: z.farhodov
  Date: 30.07.2024
  Time: 13:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product Deletion Error</title>
    <style>
        body {
            background-image: url('https://assets-global.website-files.com/5faeb38cb5f86b4868288cce/62a717aa2b9d4271ff885ca7_Executive%20Eiffel%20View%20Room5%201%20(1).webp');
            background-size: cover;
            background-position: center;
            font-family: Arial, sans-serif;
            color: #ffffff;
        }
        .message-container {
            margin-top: 20%;
            text-align: center;
        }
        .error-message {
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 20px;
        }
        .back-button {
            display: inline-block;
            padding: 10px 20px;
            background-color: #000;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s;
        }
        .back-button:hover {
            background-color: #333;
        }
    </style>
</head>
<body>
<div class="message-container">
    <a href="${pageContext.request.contextPath}/" class="home-btn">Back</a> <!-- Home button -->
    <div class="error-message">
        You cannot delete this product because there are existing orders for it.
    </div>
</div>
</body>
</html>

