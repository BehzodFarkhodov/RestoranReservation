<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login Page</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: url('https://observer.com/wp-content/uploads/sites/2/2016/05/sixtyfive-10496_rgb.jpg?quality=80&strip') no-repeat center center fixed;
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            background: rgba(255, 255, 255, 0.9);
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

        .container input {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        .container button {
            width: 100%;
            padding: 10px;
            margin: 20px 0;
            background: #9381ff;
            border: none;
            border-radius: 5px;
            color: #fff;
            font-size: 16px;
            cursor: pointer;
            transition: background 0.3s;
        }

        .container button:hover {
            background: #6b5ebc;
        }
    </style>
</head>
<body>
<div class="container">
    <h1 class="text-center">Login</h1>
    <form action="${pageContext.request.contextPath}/login" method="post">
        <div class="mb-3">
            <input type="text" class="form-control" id="email" name="email" placeholder="Email" required>
        </div>
        <div class="mb-3">
            <input type="password" class="form-control" id="password" name="password" placeholder="Password" required>
        </div>
        <button type="submit" class="btn btn-primary w-100">Login</button>
    </form>
</div>
</body>
</html>
