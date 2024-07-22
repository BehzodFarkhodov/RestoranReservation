<%--<!DOCTYPE html>--%>
<%--<html lang="en">--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <meta name="viewport" content="width=device-width, initial-scale=1.0">--%>
<%--    <title>Modern Search and Registration Form</title>--%>
<%--    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">--%>
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
<%--            padding: 20px;--%>
<%--            background-color: rgba(255, 255, 255, 0.9); /* White background with opacity */--%>
<%--            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);--%>
<%--        }--%>
<%--        .header .search-container {--%>
<%--            display: flex;--%>
<%--            align-items: center;--%>
<%--            width: 60%;--%>
<%--        }--%>
<%--        .header .search-container label {--%>
<%--            margin-right: 10px;--%>
<%--            font-size: 16px;--%>
<%--            font-weight: bold;--%>
<%--            color: #f7b600;--%>
<%--        }--%>
<%--        .header .search-container .input-group {--%>
<%--            flex-grow: 1;--%>
<%--        }--%>
<%--        .header .search-container .input-group input {--%>
<%--            border-radius: 25px 0 0 25px;--%>
<%--            border: 2px solid #f7b600;--%>
<%--            padding: 10px 20px;--%>
<%--            font-weight: bold;--%>
<%--            font-size: 16px;--%>
<%--        }--%>
<%--        .header .search-container .input-group button {--%>
<%--            border-radius: 0 25px 25px 0;--%>
<%--            background-color: #f7b600;--%>
<%--            color: #ffffff;--%>
<%--            border: 2px solid #f7b600;--%>
<%--            cursor: pointer;--%>
<%--            font-weight: bold;--%>
<%--            font-size: 16px;--%>
<%--        }--%>
<%--        .header .search-container .input-group button:hover {--%>
<%--            background-color: #d19e00;--%>
<%--        }--%>
<%--        .header .registration-buttons {--%>
<%--            display: flex;--%>
<%--            gap: 10px;--%>
<%--        }--%>
<%--        .header .registration-button {--%>
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
<%--        .header .registration-button:hover {--%>
<%--            background-color: #d19e00;--%>
<%--        }--%>
<%--        .header .logo {--%>
<%--            height: 50px;--%>
<%--            margin-right: 20px;--%>
<%--        }--%>
<%--        .card {--%>
<%--            margin-bottom: 20px;--%>
<%--        }--%>
<%--        .card-img-top {--%>
<%--            width: 100%;--%>
<%--            height: 200px;--%>
<%--            object-fit: cover;--%>
<%--        }--%>
<%--    </style>--%>
<%--</head>--%>
<%--<body>--%>
<%--<div class="header">--%>
<%--    <div class="search-container">--%>
<%--        <label for="search-input">Search food, restaurant or brand </label>--%>
<%--        <div class="input-group">--%>
<%--            <input type="text" id="search-input" class="form-control" placeholder="Search...">--%>
<%--            <button type="button" class="btn">Search</button>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--&lt;%&ndash;    <img src="https://via.placeholder.com/150" alt="Logo" class="logo">&ndash;%&gt;--%>
<%--    <div class="registration-buttons">--%>
<%--        <a href="${pageContext.request.contextPath}/register" class="registration-button">Register</a>--%>
<%--        <a href="${pageContext.request.contextPath}/login" class="registration-button">Log In</a>--%>
<%--    </div>--%>
<%--</div>--%>


<%--<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>--%>
<%--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>--%>
<%--</body>--%>
<%--</html>--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modern Search and Registration Form</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">
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
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.9); /* White background with opacity */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 1000;
        }
        .header .search-container {
            display: flex;
            align-items: center;
            width: 60%;
        }
        .header .search-container label {
            margin-right: 10px;
            font-size: 16px;
            font-weight: bold;
            color: #f7b600;
        }
        .header .search-container .input-group {
            flex-grow: 1;
        }
        .header .search-container .input-group input {
            border-radius: 25px 0 0 25px;
            border: 2px solid #f7b600;
            padding: 10px 20px;
            font-weight: bold;
            font-size: 16px;
        }
        .header .search-container .input-group button {
            border-radius: 0 25px 25px 0;
            background-color: #f7b600;
            color: #ffffff;
            border: 2px solid #f7b600;
            cursor: pointer;
            font-weight: bold;
            font-size: 16px;
        }
        .header .search-container .input-group button:hover {
            background-color: #d19e00;
        }
        .header .registration-buttons {
            display: flex;
            gap: 10px;
        }
        .header .registration-button {
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
        .header .registration-button:hover {
            background-color: #d19e00;
        }
        .header .logo {
            height: 50px;
            margin-right: 20px;
        }
        .content {
            padding-top: 100px; /* For spacing below the fixed header */
        }
        .card-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
        }
        .card {
            background-color: #f7b600;
            border-radius: 15px;
            overflow: hidden;
            margin-bottom: 20px;
            width: 30%;
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
        .btn-primary, .btn-secondary {
            border-radius: 25px;
            font-weight: bold;
            font-size: 16px;
            margin-right: 10px;
            margin-top: 10px;
        }
    </style>
</head>
<body>
<div class="header">
    <div class="search-container">
        <label for="search-input">Search food, restaurant or brand</label>
        <div class="input-group">
            <input type="text" id="search-input" class="form-control" placeholder="Search...">
            <button type="button" class="btn">Search</button>
        </div>
    </div>
    <div class="registration-buttons">
        <a href="${pageContext.request.contextPath}/register" class="registration-button">Register</a>
        <a href="${pageContext.request.contextPath}/login" class="registration-button">Log In</a>
    </div>
</div>

<div class="container content">
    <div class="card-container">
        <c:forEach var="restaurant" items="${restaurants}">
            <div class="card">
                <img src="${pageContext.request.contextPath}/uploads/${restaurant.picturePath}" class="card-img-top" alt="${restaurant.name}">
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
        </c:forEach>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
</body>
</html>
