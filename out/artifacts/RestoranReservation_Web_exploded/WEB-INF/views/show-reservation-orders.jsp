<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My Restaurant Reservations</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            color: #333;
            text-align: center;
            padding: 50px;
        }
        .container {
            background-color: #fff;
            border-radius: 10px;
            padding: 30px;
            display: inline-block;
            margin-top: 30px;
            width: 80%;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
        }
        th, td {
            padding: 12px;
            border: 1px solid #ddd;
            text-align: left;
        }
        th {
            background-color: #f0ad4e;
            color: white;
        }
        a {
            text-decoration: none;
            color: #007bff;
        }
        .home-button {
            background-color: #f0ad4e;
            color: white;
            border: none;
            border-radius: 25px;
            padding: 15px 30px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .home-button:hover {
            background-color: #ec971f;
        }
    </style>
</head>
<body>

<a class="home-button" href="${pageContext.request.contextPath}/">Home</a>
<div class="container">
    <h1>Your Restaurant Reservations</h1>
    <table>
        <thead>
        <tr>
            <th>Username</th>
            <th>Email</th>
            <th>Reservation Date</th>
            <th>Number of People</th>
            <th>Status</th>
            <th>Near Window</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="reservation" items="${reservations}">
            <tr>
                <td>${reservation.user.username}</td>
                <td>${reservation.user.email}</td>
                <td>${reservation.reservationDate}</td>
                <td>${reservation.numberOfPeople}</td>
                <td>${reservation.status}</td>
                <td>${reservation.nearTheWindow}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
