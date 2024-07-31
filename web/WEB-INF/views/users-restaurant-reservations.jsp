<%--
  Created by IntelliJ IDEA.
  User: z.farhodov
  Date: 31.07.2024
  Time: 18:12
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>

<%--&lt;%&ndash;--%>
<%--  Created by IntelliJ IDEA.--%>
<%--  User: z.farhodov--%>
<%--  Date: 27.07.2024--%>
<%--  Time: 17:09--%>
<%--  To change this template use File | Settings | File Templates.--%>
<%--&ndash;%&gt;--%>
<%--<!-- show-restaurant-orders.jsp -->--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>Restaurant Orders</title>--%>
<%--    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/5.0.0/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">--%>
<%--    <style>--%>
<%--        body {--%>
<%--            font-family: Arial, sans-serif;--%>
<%--            background: #f8f9fa;--%>
<%--            padding: 20px;--%>
<%--        }--%>
<%--        .container {--%>
<%--            background: #fff;--%>
<%--            padding: 20px;--%>
<%--            border-radius: 5px;--%>
<%--            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);--%>
<%--        }--%>
<%--        table {--%>
<%--            width: 100%;--%>
<%--            border-collapse: collapse;--%>
<%--        }--%>
<%--        th, td {--%>
<%--            padding: 10px;--%>
<%--            text-align: left;--%>
<%--            border-bottom: 1px solid #ddd;--%>
<%--        }--%>
<%--        th {--%>
<%--            background-color: #f1f1f1;--%>
<%--        }--%>
<%--    </style>--%>
<%--</head>--%>
<%--<body>--%>
<%--<div class="container">--%>
<%--    <h1 class="text-center">Restaurant Orders</h1>--%>
<%--    <table class="table">--%>
<%--        <thead>--%>
<%--        <tr>--%>
<%--            <th>Username</th>--%>
<%--            <th>Product</th>--%>
<%--            <th>Quantity</th>--%>
<%--            <th>Order Date</th>--%>
<%--            <th>Status</th>--%>
<%--        </tr>--%>
<%--        </thead>--%>
<%--        <tbody>--%>
<%--        <c:forEach var="order" items="${orders}">--%>
<%--            <tr>--%>
<%--                <td>${order.product.foodName}</td>--%>
<%--                <td>${order.quantity}</td>--%>
<%--            </tr>--%>
<%--        </c:forEach>--%>
<%--        </tbody>--%>
<%--    </table>--%>
<%--</div>--%>

<%--<!-- Bootstrap JS and dependencies -->--%>
<%--<script src="https://code.jquery.com/jquery-3.6.0.min.js" crossorigin="anonymous"></script>--%>
<%--<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" crossorigin="anonymous"></script>--%>
<%--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/5.0.0/js/bootstrap.min.js" crossorigin="anonymous"></script>--%>
<%--</body>--%>
<%--</html>--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <title>Restaurant Orders</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/5.0.0/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f8f9fa;
            padding: 20px;
        }
        .container {
            background: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #f1f1f1;
        }
    </style>
</head>
<body>
<div class="container">
    <h1 class="text-center">Restaurant Reservations</h1>
    <table class="table">
        <thead>
        <tr>
            <th>User</th>
            <th>Restaurant</th>
            <th>Number of People</th>
            <th>Status</th>
            <th>Phone Number</th>
            <th>Reservation Date</th>
            <th>Table Type</th>
            <th>Near The Window</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="reservation" items="${reservations}">
            <tr>
                <td>${reservation.user.username}</td>
                <td>${reservation.restaurant.name}</td>
                <td>${reservation.numberOfPeople}</td>
                <td>${reservation.status}</td>
                <td>${reservation.phoneNumber}</td>
                <td>${reservation.reservationDate}</td>
                <td>${reservation.type}</td>
                <td>${reservation.nearTheWindow}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/5.0.0/js/bootstrap.min.js" crossorigin="anonymous"></script>
</body>
</html>
