<%--
  Created by IntelliJ IDEA.
  User: z.farhodov
  Date: 24.07.2024
  Time: 11:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Product List</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .product-card {
            border: 1px solid #ddd;
            border-radius: 5px;
            padding: 15px;
            margin-bottom: 20px;
            text-align: center;
        }
        .product-image {
            max-width: 100%;
            height: auto;
            margin-bottom: 15px;
        }
    </style>
</head>
<body>
<div class="container mt-5">
    <h2>Product List</h2>
    <div class="row">
        <c:forEach var="product" items="${products}">
            <div class="col-md-4">
                <div class="product-card">
                    <img src="${pageContext.request.contextPath}/pictures/${product.imagePath}" alt="${product.foodName}" class="product-image">
                    <h4>${product.foodName}</h4>
                    <p>${product.foodDescription}</p>
                    <p><strong>Price:</strong> ${product.price}</p>
                    <form action="${pageContext.request.contextPath}/delete-product" method="post">
                        <input type="hidden" name="productId" value="${product.id}">
                        <button type="submit" class="btn btn-danger">Delete</button>
                    </form>
                </div>
            </div>
        </c:forEach>
    </div>
</div>
</body>
</html>
