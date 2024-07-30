<%--
  Created by IntelliJ IDEA.
  User: z.farhodov
  Date: 30.07.2024
  Time: 11:55
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Restaurant Products</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            padding: 40px;
        }
        .product-card {
            border: 1px solid #ddd;
            border-radius: 10px;
            overflow: hidden;
            transition: transform 0.3s, box-shadow 0.3s;
        }
        .product-card:hover {
            transform: scale(1.05);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.15);
        }
        .product-card img {
            max-width: 100%;
            height: 200px;
            object-fit: cover;
        }
        .product-info {
            padding: 15px;
            background-color: white;
        }
        .action-buttons {
            display: flex;
            gap: 10px;
            margin-top: 15px;
        }
        .action-buttons form {
            margin: 0;
            flex: 1;
        }
        .action-buttons button {
            width: 100%;
        }
        .btn-warning {
            background-color: #ffc107;
            border: none;
            color: #212529;
        }
        .btn-warning:hover {
            background-color: #e0a800;
            color: #fff;
        }
        .btn-danger {
            background-color: #dc3545;
            border: none;
            color: #fff;
        }
        .btn-danger:hover {
            background-color: #c82333;
        }
        .home-button {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
<!-- Home Button -->
<div class="container home-button">
    <a href="${pageContext.request.contextPath}/show-all-users-restaurant" class="btn btn-warning">Back</a>
</div>

<h1 class="text-center mb-4">Products of Restaurant</h1>
<div class="container">
    <div class="row g-4">
        <c:forEach var="product" items="${products}">
            <div class="col-md-4">
                <div class="product-card">
                    <img src="${pageContext.request.contextPath}/pictures/${product.imagePath}" alt="${product.foodName}">
                    <div class="product-info">
                        <h2>${product.foodName}</h2>
                        <p>${product.foodDescription}</p>
                        <p>Price: $${product.price}</p>
                        <p>Quantity: ${product.quantity}</p>
                        <div class="action-buttons">
                            <!-- Update Button -->
                            <form action="${pageContext.request.contextPath}/update-product" method="get">
                                <input type="hidden" name="productId" value="${product.id}">
                                <button type="submit" class="btn btn-warning">Update</button>
                            </form>
                            <!-- Delete Button -->
                            <form action="${pageContext.request.contextPath}/delete-product" method="post">
                                <input type="hidden" name="productId" value="${product.id}">
                                <button type="submit" class="btn btn-danger">Delete</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>
</body>
</html>
