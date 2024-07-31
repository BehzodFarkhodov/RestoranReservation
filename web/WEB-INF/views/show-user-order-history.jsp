<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Reservations</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="<c:url value='/css/styles.css'/>">
    <style>
        .btn-cancel {
            background-color: #dc3545; /* Bootstrap's danger color */
            color: white;
        }
        .btn-cancel:hover {
            background-color: #c82333;
        }
        .btn-back {
            background-color: #ffc107; /* Yellow color */
            color: black;
            position: fixed;
            top: 1rem;
            left: 1rem;
        }
        .btn-back:hover {
            background-color: #e0a800;
        }
    </style>
</head>
<body>
<a href="<c:url value='/user-menu'/>" class="btn btn-back">Back</a>
<div class="container mt-4">
    <h1>Your Reservations</h1>
    <table class="table table-striped">
        <thead>
        <tr>
            <th>Restaurant</th>
            <th>Number of People</th>
            <th>Status</th>
            <th>Phone Number</th>
            <th>Reservation Date</th>
            <th>Table Type</th>
            <th>Near the Window</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${reservations}" var="reservation">
            <tr>
                <td><c:out value="${reservation.restaurant.name}"/></td>
                <td><c:out value="${reservation.numberOfPeople}"/></td>
                <td><c:out value="${reservation.status}"/></td>
                <td><c:out value="${reservation.phoneNumber}"/></td>
                <td><c:out value="${reservation.reservationDate}"/></td>
                <td><c:out value="${reservation.type}"/></td>
                <td><c:out value="${reservation.nearTheWindow}"/></td>
                <td>
                    <form action="<c:url value='/cancel-reservation'/>" method="post" style="display:inline;">
                        <input type="hidden" name="reservationId" value="${reservation.id}"/>
                        <button type="submit" class="btn btn-cancel">Cancel</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
