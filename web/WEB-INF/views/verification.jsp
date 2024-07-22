<%--
  Created by IntelliJ IDEA.
  User: z.farhodov
  Date: 16.07.2024
  Time: 14:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Verification</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: url('https://www.menucontrol.com.br/wp-content/uploads/2018/09/conheca-4-estrategias-de-marketing-para-restaurantes.jpeg') no-repeat center center fixed;
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            background: rgba(255, 255, 255, 0.8);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
        }
        h1 {
            text-align: center;
            color: #333;
        }
        form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        label {
            margin: 10px 0 5px;
            color: #555;
        }
        input {
            padding: 10px;
            margin-bottom: 15px;
            width: 100%;
            max-width: 300px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }
        button {
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            background-color: #9381ff;
            color: white;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        button:hover {
            background-color: #7a6bd6;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Verify</h1>
    <form action="${pageContext.request.contextPath}/verify" method="post">
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>
        <label for="code">Verification Code:</label>
        <input type="text" id="code" name="code" required>
        <button type="submit">Verify</button>
    </form>
</div>
</body>
</html>
