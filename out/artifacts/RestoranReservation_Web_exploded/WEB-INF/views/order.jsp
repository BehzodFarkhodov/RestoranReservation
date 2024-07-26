<%@ page import="org.example.entity.UserEntity" %><%--
  Created by IntelliJ IDEA.
  User: Victus
  Date: 7/25/2024
  Time: 11:34 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Mahsulotni Buyurtma Qilish</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <h1>Mahsulotni Buyurtma Qilish</h1>
    <form action="${pageContext.request.contextPath}/save-order" method="post">
        <input type="hidden" name="product.id" value="${product.id}">
        <input type="hidden" name="userId" value="${user.id}">

        <input type="hidden" name="status" value="Pending">

        <div class="form-group">
            <label for="quantity">Miqdor:</label>
            <input type="number" id="quantity" name="quantity" class="form-control" min="1" required>
        </div>

        <button type="submit" class="btn btn-primary">Buyurtma Qilish</button>
    </form>
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
</body>
</html>
