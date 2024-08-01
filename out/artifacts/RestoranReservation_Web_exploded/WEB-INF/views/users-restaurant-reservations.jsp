<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <title>Restaurant Reservations</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f8f9fa;
            padding: 20px;
            position: relative; /* Tugmani yuqori chapda joylashtirish uchun */
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
        .btn-accept {
            background-color: green;
            color: white;
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
<a href="${pageContext.request.contextPath}/" class="home-button">Home</a>

<div class="container">
    <h1 class="text-center">Restaurant Reservations</h1>
    <table class="table">
        <thead>
        <tr>
            <th>User</th>
            <th>Restaurant</th>
            <th>Number of People</th>
            <th>Phone Number</th>
            <th>Reservation Date</th>
            <th>Table Type</th>
            <th>Near The Window</th>
            <th>Status</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="reservation" items="${reservations}">
            <tr>
                <td>${reservation.user.username}</td>
                <td>${reservation.restaurant.name}</td>
                <td>${reservation.numberOfPeople}</td>
                <td>${reservation.phoneNumber}</td>
                <td>${reservation.reservationDate}</td>
                <td>${reservation.type}</td>
                <td>${reservation.nearTheWindow}</td>
                <td>${reservation.status}</td>
                <td>
                    <form action="${pageContext.request.contextPath}/accept-reservation" method="post">
                        <input type="hidden" name="reservationId" value="${reservation.id}"/>
                        <button type="submit" class="btn btn-accept">Accept</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
