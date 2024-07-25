<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Register</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/5.0.0/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-5zmQ4roQRRu5exf5p0xU8bs9k4kZXJ6yyRLn5fh7Rp9HtHgnd64QZjEKmM5dU8vX" crossorigin="anonymous">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: url('https://i.pinimg.com/originals/43/71/97/437197fdd0a42f3cdf72dc86e16f2a12.jpg') no-repeat center center fixed;
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            background: rgba(255, 255, 255, 0.9); /* Yengilroq fon */
            padding: 20px 40px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
            max-width: 500px; /* Formaning maksimal kengligini belgilash */
            width: 100%;
        }

        .container h1 {
            margin-bottom: 20px;
            font-size: 24px;
            color: #333;
        }

        .container .form-label {
            color: #333;
            text-align: left;
            display: block;
            margin-bottom: 5px;
        }

        .container .form-control {
            border: 1px solid #ddd;
            padding: 10px;
            border-radius: 5px;
            width: 100%;
            box-sizing: border-box;
        }

        .container .form-control:focus {
            border-color: #9381ff;
            box-shadow: none;
        }

        .container .btn-primary {
            background-color: #9381ff;
            border-color: #9381ff;
            transition: background-color 0.3s, border-color 0.3s;
            width: 100%;
            padding: 10px;
            border-radius: 5px;
        }

        .container .btn-primary:hover {
            background-color: #6b5ebc;
            border-color: #6b5ebc;
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
    <h1 class="text-center">Register</h1>
    <form action="${pageContext.request.contextPath}/register" method="post">
        <div class="mb-3">
            <label for="username" class="form-label">Username</label>
            <input type="text" class="form-control" id="username" name="username" required>
        </div>
        <div class="mb-3">
            <label for="email" class="form-label">Email</label>
            <input type="email" class="form-control" id="email" name="email" required>
        </div>
        <button type="submit" class="btn btn-primary">Register</button>
    </form>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRtRYmBOZ4h1bg7I5lDzzk5Wkl4lC6G7RyzzNpeub" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-eNNi1tZgT9ppY6UQpl3uKO0I+idKrxGV/XhXkwi9Mt6ozcDkn4sl9KBP6V9KrY" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/5.0.0/js/bootstrap.min.js" integrity="sha384-pzjw8f+ua7Kw1TIqF0CJXwEFgTWH2NfMRzylzvBuZB1zfoPWRRKE4jO0p+kvJ7Lr" crossorigin="anonymous"></script>
</body>
</html>
