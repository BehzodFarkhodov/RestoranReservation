<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 30.07.2024
  Time: 14:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Show Restoran</title>
</head>
<body>
<a href="${pageContext.request.contextPath}/show-all-restaurant"></a>
<div class="container">
    <h1 class="text-center mb-4">All Restaurants</h1>
    <div class="row g-4">
        <c:forEach var="restaurant" items="${restaurants}">
            <div class="col-md-4 d-flex">
                <div class="restaurant-card card w-100">
                    <img src="${pageContext.request.contextPath}/pictures/${restaurant.picturePath}" class="card-img-top" alt="${restaurant.name}">
                    <div class="restaurant-info">
                        <h2>${restaurant.name}</h2>
                        <p>Location: ${restaurant.location}</p>
                        <p>Address: ${restaurant.address}</p>
                        <p>Phone: ${restaurant.phone}</p>
                        <P>User: ${restaurant.owner}</P>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>
</body>
</html>
