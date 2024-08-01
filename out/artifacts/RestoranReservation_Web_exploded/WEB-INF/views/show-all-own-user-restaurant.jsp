<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: z.farhodov
  Date: 28.07.2024
  Time: 12:09
  To change this template use File | Settings | File Templates.
--%>
<!-- user-restaurants.jsp -->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>My Restaurants</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            padding: 40px;
        }
        .home-btn {
            position: absolute;
            top: 20px;
            left: 20px;
            background-color: #ffcc00;
            color: white;
            border: none;
            border-radius: 50%;
            width: 40px;
            height: 40px;
            display: flex;
            justify-content: center;
            align-items: center;
            text-decoration: none;
            font-size: 18px;
        }
        .restaurant-card {
            border: none;
            border-radius: 10px;
            overflow: hidden;
            transition: transform 0.3s, box-shadow 0.3s;
            display: flex;
            flex-direction: column;
            height: 100%;
        }
        .restaurant-card:hover {
            transform: scale(1.05);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.15);
        }
        .restaurant-card img {
            max-width: 100%;
            border-bottom: 3px solid #ffcc00; /* Yellow border */
            height: 200px; /* Fixed height for images */
            object-fit: cover; /* Ensure the image covers the area */
        }
        .restaurant-info {
            padding: 15px;
            background-color: white;
            flex-grow: 1;
        }
        .restaurant-info h2 {
            margin: 0 0 10px;
            font-size: 24px;
            color: #333;
            white-space: nowrap; /* Prevent text from wrapping */
            overflow: hidden; /* Hide overflow text */
            text-overflow: ellipsis; /* Add ellipsis to overflow text */
        }
        .restaurant-info p {
            margin: 0;
            color: #555;
            white-space: nowrap; /* Prevent text from wrapping */
            overflow: hidden; /* Hide overflow text */
            text-overflow: ellipsis; /* Add ellipsis to overflow text */
        }
        .action-buttons {
            display: flex;
            gap: 10px;
            margin-top: 10px;
        }
        .delete-btn {
            color: white;
            background-color: #dc3545; /* Red color */
            border: none;
        }
        .delete-btn:hover {
            background-color: #c82333; /* Darker red */
        }
        .view-btn {
            color: white;
            background-color: #ffcc00; /* Yellow color */
            border: none;
        }
        .view-btn:hover {
            background-color: #e0a800; /* Darker yellow */
        }
    </style>
</head>
<body>
<a href="${pageContext.request.contextPath}/" class="home-btn">Home</a> <!-- Home button -->
<div class="container">
    <h1 class="text-center mb-4">My Restaurants</h1>
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
                        <div class="action-buttons">
                            <!-- Delete Button -->

                            <form action="${pageContext.request.contextPath}/delete-restaurant" method="post">
                                <input type="hidden" name="restaurantId" value="${restaurant.id}">
                                <button type="submit" class="btn delete-btn">Delete</button>
                            </form>
                            <!-- View Restaurant Button -->
                            <form action="${pageContext.request.contextPath}/view-own-restaurant" method="post">
                                <input type="hidden" name="restaurantId" value="${restaurant.id}">
                                <button type="submit" class="btn view-btn">View Restaurant</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
