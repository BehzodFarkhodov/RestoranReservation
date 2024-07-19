<%--
  Created by IntelliJ IDEA.
  User: z.farhodov
  Date: 15.07.2024
  Time: 11:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Start</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to right, #f8f9fa, #9381ff);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            background: #fff;
            padding: 20px 40px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .container h1 {
            margin-bottom: 20px;
            font-size: 24px;
            color: #333;
        }

        .container a {
            display: inline-block;
            margin: 10px 20px;
            padding: 10px 20px;
            text-decoration: none;
            color: #fff;
            background: #9381ff;
            border-radius: 5px;
            transition: background 0.3s;
        }

        .container a:hover {
            background: #6b5ebc;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Welcome</h1>
    <a href="${pageContext.request.contextPath}/login">Login</a>
    <a href="${pageContext.request.contextPath}/register">Register</a>
</div>

</body>
</html>

