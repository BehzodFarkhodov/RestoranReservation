<%--
  Created by IntelliJ IDEA.
  User: z.farhodov
  Date: 19.07.2024
  Time: 13:19
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Restaurants</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
    <h2>Restaurants</h2>
    <table class="table table-bordered">
        <thead>
        <tr>
            <th>Name</th>
            <th>Address</th>
            <th>Location</th>
            <th>Phone</th>
            <th>Type</th>
            <th>Picture</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="restaurant" items="${restaurants}">
            <tr>
                <td>${restaurant.name}</td>
                <td>${restaurant.address}</td>
                <td>${restaurant.location}</td>
                <td>${restaurant.phone}</td>
                <td>${restaurant.type}</td>
                <td><img src="${restaurant.picturePath}" alt="${restaurant.name}" width="100"></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
