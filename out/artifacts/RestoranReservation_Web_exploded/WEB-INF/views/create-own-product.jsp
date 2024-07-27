<%--
  Created by IntelliJ IDEA.
  User: z.farhodov
  Date: 27.07.2024
  Time: 13:10
  To change this template use File | Settings | File Templates.
--%>


<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>Create Product</title>--%>
<%--    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/5.0.0/css/bootstrap.min.css" rel="stylesheet">--%>
<%--    <style>--%>
<%--        body {--%>
<%--            background: #f8f9fa;--%>
<%--        }--%>
<%--        .container {--%>
<%--            margin-top: 50px;--%>
<%--        }--%>
<%--        .form-control {--%>
<%--            border-radius: 0.25rem;--%>
<%--        }--%>
<%--        .btn-primary {--%>
<%--            background-color: #9381ff;--%>
<%--            border-color: #9381ff;--%>
<%--        }--%>
<%--        .btn-primary:hover {--%>
<%--            background-color: #6b5ebc;--%>
<%--            border-color: #6b5ebc;--%>
<%--        }--%>
<%--    </style>--%>
<%--</head>--%>
<%--<body>--%>
<%--<div class="container">--%>
<%--    <h1>Create Product</h1>--%>
<%--    <form action="${pageContext.request.contextPath}/create-own-product" method="post" enctype="multipart/form-data">--%>
<%--        <div class="mb-3">--%>
<%--            <label for="name" class="form-label">Product Name</label>--%>
<%--            <input type="text" class="form-control" id="name" name="name" required>--%>
<%--        </div>--%>
<%--        <div class="mb-3">--%>
<%--            <label for="description" class="form-label">Description</label>--%>
<%--            <textarea class="form-control" id="description" name="description" rows="3" required></textarea>--%>
<%--        </div>--%>
<%--        <div class="mb-3">--%>
<%--            <label for="price" class="form-label">Price</label>--%>
<%--            <input type="number" class="form-control" id="price" name="price" step="0.01" required>--%>
<%--        </div>--%>
<%--        <div class="mb-3">--%>
<%--            <label for="quantity" class="form-label">Quantity</label>--%>
<%--            <input type="number" class="form-control" id="quantity" name="quantity" required>--%>
<%--        </div>--%>
<%--        <div class="mb-3">--%>
<%--            <label for="picture" class="form-label">Image</label>--%>
<%--            <input type="file" class="form-control" id="picture" name="picture" accept="pictures/*" required>--%>
<%--        </div>--%>
<%--        <div class="mb-3">--%>
<%--            <label for="restaurantId" class="form-label">Select Restaurant</label>--%>
<%--            <select class="form-control" id="restaurantId" name="restaurantId" required>--%>
<%--                <c:forEach var="restaurant" items="${restaurants}">--%>
<%--                    <option value="${restaurant.id}">${restaurant.name}</option>--%>
<%--                </c:forEach>--%>
<%--            </select>--%>
<%--        </div>--%>
<%--        <button type="submit" class="btn btn-primary">Add Product</button>--%>
<%--    </form>--%>
<%--</div>--%>
<%--</body>--%>
<%--</html>--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <title>Create Product</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
    <h2>Create Product</h2>
    <form action="${pageContext.request.contextPath}/create-product" method="post" enctype="multipart/form-data">
        <div class="form-group">
            <label for="foodName">Food Name</label>
            <input type="text" id="foodName" name="foodName" class="form-control" required/>
        </div>
        <div class="form-group">
            <label for="foodDescription">Food Description</label>
            <input type="text" id="foodDescription" name="foodDescription" class="form-control" required/>
        </div>
        <div class="form-group">
            <label for="price">Price</label>
            <input type="number" id="price" name="price" class="form-control" required/>
        </div>
        <div class="form-group">
            <label for="quantity">Quantity</label>
            <input type="number" id="quantity" name="quantity" class="form-control" required/>
        </div>
        <div class="form-group">
            <label for="imagePath">Image</label>
            <input type="file" id="imagePath" name="imageFile" class="form-control-file" required/>
        </div>

        <div class="form-group">
            <label for="restaurant">Select Restaurant</label>
            <select id="restaurant" name="restaurantId" class="form-control" required>
                <c:forEach var="restaurant" items="${restaurants}">
                    <option value="${restaurant.id}">${restaurant.name}</option>
                </c:forEach>
            </select>
        </div>

        <button type="submit" class="btn btn-primary">Create</button>
    </form>
</div>
</body>
</html>



