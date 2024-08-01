<%--
  Created by IntelliJ IDEA.
  User: z.farhodov
  Date: 27.07.2024
  Time: 14:16
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Products List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">    <style>
        body {
            background: #f8f9fa;
        }
        .container {
            margin-top: 50px;
        }
        .btn-primary {
            background-color: #9381ff;
            border-color: #9381ff;
        }
        .btn-primary:hover {
            background-color: #6b5ebc;
            border-color: #6b5ebc;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Products List</h1>
    <a href="${pageContext.request.contextPath}/products/create" class="btn btn-primary mb-3">Create Product</a>
    <table class="table table-bordered">
        <thead>
        <tr>
            <th>Name</th>
            <th>Description</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Image</th>
            <th>Restaurant</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="product" items="${products}">
            <tr>
                <td>${product.foodName}</td>
                <td>${product.foodDescription}</td>
                <td>${product.price}</td>
                <td>${product.quantity}</td>
                <td><img src="${product.imagePath}" alt="${product.foodName}" width="100"/></td>
                <td>${product.restaurant.name}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>

