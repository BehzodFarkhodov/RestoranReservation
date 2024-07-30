<%--
  Created by IntelliJ IDEA.
  User: z.farhodov
  Date: 30.07.2024
  Time: 12:40
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Update Product</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h1 class="text-center mb-4">Update Product</h1>
    <form action="${pageContext.request.contextPath}/update-product" method="post">
        <input type="hidden" name="productId" value="${product.id}">
        <div class="mb-3">
            <label for="foodName" class="form-label">Food Name</label>
            <input type="text" class="form-control" id="foodName" name="foodName" value="${product.foodName}" required>
        </div>
        <div class="mb-3">
            <label for="foodDescription" class="form-label">Food Description</label>
            <textarea class="form-control" id="foodDescription" name="foodDescription" rows="3" required>${product.foodDescription}</textarea>
        </div>
        <div class="mb-3">
            <label for="price" class="form-label">Price</label>
            <input type="number" class="form-control" id="price" name="price" value="${product.price}" step="0.01" required>
        </div>
        <div class="mb-3">
            <label for="quantity" class="form-label">Quantity</label>
            <input type="number" class="form-control" id="quantity" name="quantity" value="${product.quantity}" required>
        </div>
        <div class="mb-3">
            <label for="imagePath" class="form-label">Image Path</label>
            <input type="text" class="form-control" id="imagePath" name="imagePath" value="${product.imagePath}" required>
        </div>
        <button type="submit" class="btn btn-primary">Update</button>
    </form>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
