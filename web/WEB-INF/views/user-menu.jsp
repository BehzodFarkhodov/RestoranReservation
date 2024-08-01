<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Menu</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: url('https://bogatyr.club/uploads/posts/2023-03/1678880620_bogatyr-club-p-vostochnaya-kukhnya-fon-foni-krasivo-11.jpg') no-repeat center center fixed;
            background-size: cover;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 500px;
            margin: 40px auto;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            border-radius: 10px;
            background-color: rgba(255, 255, 255, 0.8); /* Slightly opaque background for readability */
        }

        h2, h3 {
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
            transition: transform 0.2s, border-color 0.2s, box-shadow 0.2s;
        }

        input[type="text"]:focus, input[type="email"]:focus, input[type="password"]:focus, input[type="number"]:focus {
            transform: scale(1.05);
            border-color: #ffeb3b;
            box-shadow: 0 0 5px rgba(255, 235, 59, 0.5);
        }

        button, .home-button {
            background-color: #ffeb3b;
            color: #333;
            border: none;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        button:hover, .home-button:hover {
            background-color: #fdd835;
        }
    </style>
</head>
<body>
<div class="container">
    <a href="${pageContext.request.contextPath}/" class="home-button">Home</a>
    <h2>User Profile</h2>
    <form action="update-profile" method="post">
        <h3>Update Profile</h3>
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" value="${user.username}">

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" value="${user.email}" readonly>

        <label for="password">Password:</label>
        <input type="password" id="password" name="password" placeholder="Enter new password if changing">
        <input type="hidden" id="currentPassword" name="currentPassword" value="${user.password}">

        <button type="submit" name="action" value="updateProfile">Update Profile</button>
    </form>
    <form action="update-balance" method="post">
        <h3>Adjust Balance</h3>
        <label for="currentBalance">Current Balance:</label>
        <input type="text" id="currentBalance" name="currentBalance" value="${user.balance}" readonly>

        <label for="adjustBalance">Adjust Balance:</label>
        <input type="number" id="adjustBalance" name="adjustBalance" placeholder="Enter amount">
        <button type="submit" name="action" value="addBalance">Add to Balance</button>
    </form>

    <form method="post" action="user-orders">
        <button type="submit" name="action" value="${user.getId()}">Order History</button>
    </form>

    <form method="post" action="view-my-reservations">
        <button type="submit" name="action" value="${user.getId()}">My Reservations</button>
    </form>
</div>
</body>
</html>
