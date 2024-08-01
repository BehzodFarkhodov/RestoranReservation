<%--
  Created by IntelliJ IDEA.
  User: z.farhodov
  Date: 31.07.2024
  Time: 23:53
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Your Accepted Orders</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        .order-table th, .order-table td {
            text-align: center;
        }
        .container {
            margin-top: 20px;
        }
        .home-button {
            position: absolute;
            top: 10px;
            left: 10px;
            background-color: #FFC107; /* Sariq rang */
            color: white;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            font-size: 16px;
            text-decoration: none;
        }
        .home-button:hover {
            background-color: #e0a800; /* Yengilroq sariq rang (hover effekti) */
        }
    </style>
</head>
<body>
<a href="/show-accepted-reservations" class="home-button">Back</a>
<div class="container">
    <h1 class="my-4">Your Accepted Orders</h1>
    <table class="table table-bordered order-table">
        <thead class="thead-dark">
        <tr>
            <th>Username</th>
            <th>Product</th>
            <th>Quantity</th>
            <th>Order Date</th>
            <th>Status</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="order" items="${orders}">
            <tr>
                <td>${order.user.username}</td>
                <td>${order.product.foodName}</td>
                <td>${order.quantity}</td>
                <td>${order.createdDateTime}</td>
                <td>${order.status}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>

