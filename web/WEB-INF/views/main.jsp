<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<%--<!DOCTYPE html>--%>
<%--<html lang="en">--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <meta name="viewport" content="width=device-width, initial-scale=1.0">--%>
<%--    <title>Modern Search and Registration Form</title>--%>
<%--&lt;%&ndash;    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">&ndash;%&gt;--%>
<%--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">--%>
<%--    <style>--%>
<%--        body {--%>
<%--            background: url('https://i.pinimg.com/originals/0d/8b/45/0d8b4595a75c2747b219b7fdb7746dfd.jpg') no-repeat center center fixed;--%>
<%--            background-size: cover;--%>
<%--            margin: 0;--%>
<%--            font-family: Arial, sans-serif;--%>
<%--        }--%>
<%--        .header {--%>
<%--            display: flex;--%>
<%--            justify-content: space-between;--%>
<%--            align-items: center;--%>
<%--            padding: 10px 20px;--%>
<%--            background-color: rgba(255, 255, 255, 0.9);--%>
<%--            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);--%>
<%--            position: fixed;--%>
<%--            width: 100%;--%>
<%--            top: 0;--%>
<%--            z-index: 1000;--%>
<%--        }--%>
<%--        .header .logo {--%>
<%--            height: 50px;--%>
<%--            margin-right: 20px;--%>
<%--        }--%>
<%--        .search-container {--%>
<%--            display: flex;--%>
<%--            align-items: center;--%>
<%--            max-width: 800px;--%>
<%--            width: 100%;--%>
<%--        }--%>
<%--        .search-container input {--%>
<%--            flex: 1;--%>
<%--            margin-right: 10px;--%>
<%--            border-radius: 25px;--%>
<%--            border: 2px solid #f7b600;--%>
<%--            padding: 10px 20px;--%>
<%--            font-weight: bold;--%>
<%--            font-size: 16px;--%>
<%--            transition: transform 0.2s;--%>
<%--        }--%>
<%--        .search-container input:last-of-type {--%>
<%--            margin-right: 0;--%>
<%--        }--%>
<%--        .search-container input:hover {--%>
<%--            transform: scale(1.05);--%>
<%--        }--%>
<%--        .search-container button {--%>
<%--            border-radius: 25px;--%>
<%--            background-color: #f7b600;--%>
<%--            color: #ffffff;--%>
<%--            border: 2px solid #f7b600;--%>
<%--            cursor: pointer;--%>
<%--            font-weight: bold;--%>
<%--            font-size: 16px;--%>
<%--            padding: 10px 20px;--%>
<%--            display: inline-block;--%>
<%--            transition: transform 0.2s;--%>
<%--        }--%>
<%--        .search-container button:hover {--%>
<%--            background-color: #d19e00;--%>
<%--            transform: scale(1.05);--%>
<%--        }--%>
<%--        .registration-buttons {--%>
<%--            display: flex;--%>
<%--            gap: 10px;--%>
<%--            margin-right: 20px; /* Pushes the buttons to the right */--%>
<%--            margin-left: 0; /* Resets the left margin */--%>
<%--        }--%>

<%--        .registration-button {--%>
<%--            padding: 10px 20px;--%>
<%--            border-radius: 25px;--%>
<%--            background-color: #f7b600;--%>
<%--            color: #ffffff;--%>
<%--            border: none;--%>
<%--            cursor: pointer;--%>
<%--            text-decoration: none;--%>
<%--            font-weight: bold;--%>
<%--            font-size: 16px;--%>
<%--        }--%>

<%--        .registration-button:hover {--%>
<%--            background-color: #d19e00;--%>
<%--        }--%>
<%--        .content {--%>
<%--            padding-top: 100px;--%>
<%--            margin: 20px;--%>
<%--        }--%>
<%--        .card-container {--%>
<%--            display: flex;--%>
<%--            flex-wrap: wrap;--%>
<%--            justify-content: space-between;--%>
<%--            margin: 0 auto;--%>
<%--            max-width: 1400px;--%>
<%--        }--%>
<%--        .card {--%>
<%--            background-color: #ffffff;--%>
<%--            border-radius: 15px;--%>
<%--            overflow: hidden;--%>
<%--            margin-bottom: 20px;--%>
<%--            width: 31%;--%>
<%--            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);--%>
<%--            transition: transform 0.2s;--%>
<%--        }--%>
<%--        .card:hover {--%>
<%--            transform: scale(1.05);--%>
<%--        }--%>
<%--        .card-img-top {--%>
<%--            width: 100%;--%>
<%--            height: 200px;--%>
<%--            object-fit: cover;--%>
<%--        }--%>
<%--        .card-body {--%>
<%--            padding: 15px;--%>
<%--            text-align: center;--%>
<%--        }--%>
<%--        .btn-custom {--%>
<%--            border-radius: 25px;--%>
<%--            font-weight: bold;--%>
<%--            font-size: 16px;--%>
<%--            display: inline-block;--%>
<%--            padding: 10px 20px;--%>
<%--            text-align: center;--%>
<%--            color: #ffffff;--%>
<%--            background-color: #f7b600;--%>
<%--            border: none;--%>
<%--            margin: 5px;--%>
<%--        }--%>
<%--        .btn-custom:hover {--%>
<%--            background-color: #d19e00;--%>
<%--        }--%>
<%--        .button-container {--%>
<%--            display: flex;--%>
<%--            justify-content: space-around;--%>
<%--            gap: 10px;--%>
<%--        }--%>
<%--    </style>--%>
<%--</head>--%>
<%--<body>--%>
<%--<div class="header">--%>
<%--    <div class="search-container">--%>
<%--        <form action="${pageContext.request.contextPath}/search" method="get"   class="d-flex w-100">--%>
<%--            <input type="text" name="location" class="form-control" placeholder="Location" />--%>
<%--            <input type="text" name="name" class="form-control" placeholder="Restaurant Name" />--%>
<%--            <input type="text" name="address" class="form-control" placeholder="Address" />--%>
<%--            <button type="submit" class="btn">Search</button>--%>
<%--        </form>--%>
<%--    </div>--%>
<%--    <div class="registration-buttons">--%>
<%--        <a href="${pageContext.request.contextPath}/register" class="registration-button">Register</a>--%>
<%--        <a href="${pageContext.request.contextPath}/login" class="registration-button">Log In</a>--%>
<%--        <a href="${pageContext.request.contextPath}/user-menu" class="registration-button">My Profile</a>--%>
<%--        <a href="${pageContext.request.contextPath}/create-own-restaurant-main" class="registration-button">Create Own Restaurant</a>--%>
<%--    </div>--%>
<%--</div>--%>

<%--<div class="container content">--%>
<%--    <div class="card-container">--%>
<%--        <c:forEach var="restaurant" items="${restaurants}">--%>
<%--            <div class="card">--%>
<%--                <img src="${pageContext.request.contextPath}/pictures/${restaurant.picturePath}" class="card-img-top" alt="${restaurant.name}">--%>
<%--                <div class="card-body">--%>
<%--                    <h5 class="card-title">${restaurant.name}</h5>--%>
<%--                    <p class="card-text">--%>
<%--                        <strong>Address:</strong> ${restaurant.address}<br>--%>
<%--                        <strong>Location:</strong> ${restaurant.location}<br>--%>
<%--                        <strong>Phone:</strong> ${restaurant.phone}<br>--%>
<%--&lt;%&ndash;                        <strong>Type:</strong> ${restaurant.type}&ndash;%&gt;--%>
<%--                    </p>--%>
<%--                    <div class="button-container">--%>
<%--                        <a href="view-restaurant?id=${restaurant.id}" class="btn btn-custom">See Restaurant</a>--%>
<%--                        <a href="booking-table?id=${restaurant.id}" class="btn btn-custom">Booking Table</a>--%>
<%--                        <a href="comment-save?id=${restaurant.id}" class="btn-custom">Write Comment</a>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </c:forEach>--%>
<%--    </div>--%>
<%--</div>--%>

<%--<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>--%>
<%--&lt;%&ndash;<script src="https://maxcdn.bootstrapcdn.com/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>&ndash;%&gt;--%>
<%--<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>--%>
<%--</body>--%>
<%--</html>--%>



<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modern Search and Registration Form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="icon" href="${pageContext.request.contextPath}/path/to/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            background: url('https://i.pinimg.com/originals/0d/8b/45/0d8b4595a75c2747b219b7fdb7746dfd.jpg') no-repeat center center fixed;
            background-size: cover;
            margin: 0;
            font-family: Arial, sans-serif;
        }
        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px 20px;
            background-color: rgba(255, 255, 255, 0.9);
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 1000;
        }
        .logo {
            height: 50px;
            margin-right: 20px;
        }
        .search-container {
            display: flex;
            align-items: center;
            max-width: 800px;
            width: 100%;
        }
        .search-container input {
            flex: 1;
            margin-right: 10px;
            border-radius: 25px;
            border: 2px solid #f7b600;
            padding: 10px 20px;
            font-weight: bold;
            font-size: 16px;
            transition: transform 0.2s;
        }
        .search-container button {
            border-radius: 25px;
            background-color: #f7b600;
            color: #ffffff;
            border: 2px solid #f7b600;
            cursor: pointer;
            font-weight: bold;
            font-size: 16px;
            padding: 10px 20px;
            transition: transform 0.2s;
        }
        .search-container input:hover, .search-container button:hover {
            transform: scale(1.05);
        }
        .registration-buttons {
            display: flex;
            gap: 10px;
            margin-right: 20px;
            align-items: center;
        }
        .registration-button {
            padding: 10px 20px;
            border-radius: 25px;
            background-color: #f7b600;
            color: #ffffff;
            border: none;
            cursor: pointer;
            text-decoration: none;
            font-weight: bold;
            font-size: 16px;
        }
        .registration-button:hover {
            background-color: #d19e00;
        }
        .content {
            padding-top: 100px;
            margin: 20px;
        }
        .card-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            margin: 0 auto;
            max-width: 1400px;
        }
        .card {
            background-color: #ffffff;
            border-radius: 15px;
            overflow: hidden;
            margin-bottom: 20px;
            width: 31%;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.2s;
        }
        .card:hover {
            transform: scale(1.05);
        }
        .card-img-top {
            width: 100%;
            height: 200px;
            object-fit: cover;
        }
        .card-body {
            padding: 15px;
            text-align: center;
        }
        .btn-custom {
            border-radius: 25px;
            font-weight: bold;
            font-size: 16px;
            display: inline-block;
            padding: 10px 20px;
            text-align: center;
            color: #ffffff;
            background-color: #f7b600;
            border: none;
            margin: 5px;
        }
        .btn-custom:hover {
            background-color: #d19e00;
        }
        .button-container {
            display: flex;
            justify-content: space-around;
            gap: 10px;
        }
        .notification-icon {
            position: relative;
            display: inline-block;
            cursor: pointer;
            font-size: 32px; /* Increase the size of the icon */
        }
        .notification-icon .fa-bell {
            color: #f7b600;
        }
        .notification-icon .badge {
            position: absolute;
            top: -10px;
            right: -10px;
            background-color: red;
            color: white;
            border-radius: 50%;
            padding: 5px 10px;
            font-size: 12px;
            font-weight: bold;
        }
    </style>
</head>
<body>
<div class="header">
    <div class="search-container">
        <form action="${pageContext.request.contextPath}/search" method="get" class="d-flex w-100">
            <input type="text" name="location" class="form-control" placeholder="Location" />
            <input type="text" name="name" class="form-control" placeholder="Restaurant Name" />
            <input type="text" name="address" class="form-control" placeholder="Address" />
            <button type="submit" class="btn">Search</button>
        </form>
    </div>
    <div class="registration-buttons">
        <a href="${pageContext.request.contextPath}/register" class="registration-button">Register</a>
        <a href="${pageContext.request.contextPath}/login" class="registration-button">Log In</a>
        <a href="${pageContext.request.contextPath}/user-menu" class="registration-button">My Profile</a>
        <a href="${pageContext.request.contextPath}/create-own-restaurant-main" class="registration-button">Create Own Restaurant</a>
        <div class="notification-icon">
            <i class="fa fa-bell"></i>
            <span class="badge">3</span>
        </div>
    </div>
</div>

<div class="container content">
    <div class="card-container">
        <c:forEach var="restaurant" items="${restaurants}">
            <div class="card">
                <img src="${pageContext.request.contextPath}/pictures/${restaurant.picturePath}" class="card-img-top" alt="${restaurant.name}">
                <div class="card-body">
                    <h5 class="card-title">${restaurant.name}</h5>
                    <p class="card-text">
                        <strong>Address:</strong> ${restaurant.address}<br>
                        <strong>Location:</strong> ${restaurant.location}<br>
                        <strong>Phone:</strong> ${restaurant.phone}
                    </p>
                    <div class="button-container">
                        <a href="view-restaurant?id=${restaurant.id}" class="btn btn-custom">See Restaurant</a>
                        <a href="booking-table?id=${restaurant.id}" class="btn btn-custom">Booking Table</a>
                        <a href="comment-save?id=${restaurant.id}" class="btn btn-custom">Write Comment</a>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>
<script>
    document.addEventListener('DOMContentLoaded', function() {
        document.querySelector('.notification-icon').addEventListener('click', function() {
            window.location.href = '${pageContext.request.contextPath}/show-accepted-reservations';
        });
    });
</script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
