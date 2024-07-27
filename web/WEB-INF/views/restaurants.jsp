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
    <style>
        .card {
            margin-bottom: 20px;
        }
        .card-img-top {
            width: 100%;
            height: 200px;
            object-fit: cover;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="${pageContext.request.contextPath}/">Home</a>
</nav>
<div class="container mt-5">
    <h2>Restaurants</h2>
    <div class="row">
        <c:forEach var="restaurant" items="${restaurants}">
            <div class="col-md-4">
                <div class="card">
                    <img src="${pageContext.request.contextPath}/pictures/${restaurant.picturePath}" class="card-img-top" alt="${restaurant.name}">
                    <div class="card-body">
                        <h5 class="card-title">${restaurant.name}</h5>
                        <p class="card-text">
                            <strong>Address:</strong> ${restaurant.address}<br>
                            <strong>Location:</strong> ${restaurant.location}<br>
                            <strong>Phone:</strong> ${restaurant.phone}<br>
                            <strong>Type:</strong> ${restaurant.type}
                        </p>
                        <a href="view-restaurant?id=${restaurant.id}" class="btn btn-primary">View Details</a>
                        <a href="book-restaurant?id=${restaurant.id}" class="btn btn-secondary">Book a Table</a>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>
</body>
</html>
