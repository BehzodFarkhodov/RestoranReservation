<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Menu</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 40px;
        }
        .container {
            background: white;
            max-width: 500px;
            margin: auto;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            color: #333;
        }
        label {
            margin: 10px 0 5px;
            display: block;
            color: #666;
        }
        input[type="text"], input[type="email"], input[type="password"], input[type="number"] {
            width: calc(100% - 22px);
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
        button {
            background-color: #5C85D6;
            color: white;
            border: none;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 5px;
        }
        button:hover {
            background-color: #3e73de;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>User Profile</h2>

    <!-- Profile Update Form -->
    <form action="update-profile" method="post"> <!-- Update this action to your servlet URL -->
        <h3>Update Profile</h3>
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" value="${user.username}">

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" value="${user.email}" readonly>

        <label for="password">Password:</label>
        <input type="password" id="password" name="password" placeholder="Enter new password if changing">

        <button type="submit" name="action" value="updateProfile">Update Profile</button>
    </form>

    <!-- Balance Adjustment Form -->
    <form action="update-balance" method="post"> <!-- Update this action to your servlet URL -->
        <h3>Adjust Balance</h3>
        <label for="currentBalance">Current Balance:</label>
        <input type="text" id="currentBalance" name="currentBalance" value="${user.balance}" readonly>

        <label for="adjustBalance">Adjust Balance:</label>
        <input type="number" id="adjustBalance" name="adjustBalance" placeholder="Enter amount">

        <button type="submit" name="action" value="addBalance">Add to Balance</button>
        <button type="submit" name="action" value="cashBalance">Cash from Balance</button>
    </form>
</div>
</body>
</html>
