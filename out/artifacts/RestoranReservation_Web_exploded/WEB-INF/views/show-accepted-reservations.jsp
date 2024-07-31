<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Your Accepted Reservations</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        .reservation-table th, .reservation-table td {
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
<a href="/" class="home-button">Home</a>
<div class="container">
    <h1 class="my-4">Your Accepted Reservations</h1>
    <table class="table table-bordered reservation-table">
        <thead class="thead-dark">
        <tr>
            <th>Restaurant Name</th>
            <th>Date & Time</th>
            <th>Number of People</th>
            <th>Status</th>
            <th>Phone Number</th>
            <th>Table Type</th>
            <th>Near the Window</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="reservation" items="${reservations}">
            <tr>
                <td>${reservation.restaurant.name}</td>
                <td>${reservation.reservationDate}</td>
                <td>${reservation.numberOfPeople}</td>
                <td>${reservation.status}</td>
                <td>${reservation.phoneNumber}</td>
                <td>${reservation.type}</td>
                <td>${reservation.nearTheWindow}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
   <div class="container mt-4">
        <a href="${pageContext.request.contextPath}/show-accepted-orders" class="btn btn-warning">Show Accepted Orders</a>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
