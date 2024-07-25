<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Restaurant Products</title>
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
            padding: 10px 20px;
            background-color: rgba(255, 255, 255, 0.9);
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 1000;
        }
        .header .logo {
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
        .search-container input:last-of-type {
            margin-right: 0;
        }
        .search-container input:hover {
            transform: scale(1.05);
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
            display: inline-block;
            transition: transform 0.2s;
        }
        .search-container button:hover {
            background-color: #d19e00;
            transform: scale(1.05);
        }
        .registration-buttons {
            display: flex;
            gap: 10px;
            margin-left: 20px;
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
    </style>
</head>
<body>
<div class="header">
<%--    <div class="search-container">--%>
<%--        <input type="text" placeholder="Search...">--%>
<%--        <button type="button">Search</button>--%>
<%--    </div>--%>
<%--    <div class="registration-buttons">--%>
<%--        <a href="register" class="registration-button">Register</a>--%>
<%--        <a href="login" class="registration-button">Login</a>--%>
<%--    </div>--%>
</div>

<div class="content">
    <c:choose>
        <c:when test="${not empty products}">
            <div class="card-container">
                <c:forEach var="product" items="${products}">
                    <div class="card">
                        <img src="${pageContext.request.contextPath}/pictures/${product.imagePath}" class="card-img-top" alt="${product.foodName}">
                        <div class="card-body">
                            <h5 class="card-title">${product.foodName}</h5>
                            <p class="card-text">
                                <strong>Price:</strong> ${product.price}<br>
                                <strong>Description:</strong> ${product.foodDescription}
                            </p>
                            <a href="orderProduct?productId=${product.id}" class="btn-custom">Order</a>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </c:when>
        <c:otherwise>
            <p>No products found for this restaurant.</p>
        </c:otherwise>
    </c:choose>
</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
</body>
</html>
