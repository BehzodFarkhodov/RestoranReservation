<!DOCTYPE html>
<html>
<head>
    <title>Register</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: url('https://i.pinimg.com/originals/57/4b/08/574b0843ffd08cd9bdc968aeac2eb919.jpg') no-repeat center center fixed;
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            color: #f8f9fa;
        }

        .container {
            background: rgba(0, 0, 0, 0.7); /* Darker background with transparency for better contrast */
            padding: 30px 50px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5);
            text-align: center;
            max-width: 500px;
            width: 100%;
        }

        .container h1 {
            margin-bottom: 20px;
            font-size: 28px;
            color: #ffeb3b; /* Yellow color */
        }

        .form-label {
            color: #fff; /* White color for better contrast */
            text-align: left;
            margin-bottom: 10px;
            display: block;
            font-weight: bold;
        }

        .form-control {
            border: 1px solid #ddd;
            padding: 12px 20px;
            border-radius: 25px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.3);
            background-color: #fff; /* White background */
            color: #333;
            width: 100%;
            margin-bottom: 15px;
        }

        .form-control:focus {
            border-color: #ffeb3b; /* Yellow border focus */
            box-shadow: 0 0 10px rgba(255, 235, 59, 0.5);
        }

        .btn-primary {
            background-color: #ffeb3b;
            border-color: #ffeb3b;
            border-radius: 25px;
            padding: 10px 20px;
            width: 100%;
            transition: background-color 0.3s, border-color 0.3s;
            color: #333;
            font-weight: bold;
        }

        .btn-primary:hover {
            background-color: #fdd835;
            border-color: #fdd835;
        }

        a {
            display: inline-block;
            margin-top: 15px;
            padding: 10px 20px;
            text-decoration: none;
            color: #333; /* Dark text color */
            background: #ffeb3b; /* Yellow background */
            border-radius: 25px;
            transition: background 0.3s;
            font-weight: bold;
        }

        a:hover {
            background: #fdd835;
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
    <a href="${pageContext.request.contextPath}/login">Already have an account? Log in here</a>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script></body>
</html>
