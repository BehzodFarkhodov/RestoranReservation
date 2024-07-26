<%--
  Created by IntelliJ IDEA.
  User: Victus
  Date: 7/25/2024
  Time: 11:34 AM
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>Mahsulotni Buyurtma Qilish</title>--%>
<%--    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">--%>
<%--</head>--%>
<%--<body>--%>
<%--<div class="container">--%>
<%--    <h1>Mahsulotni Buyurtma Qilish</h1>--%>
<%--    <form action="${pageContext.request.contextPath}/save-order" method="post">--%>
<%--        <input type="hidden" name="product.id" value="${product.id}">--%>
<%--        <input type="hidden" name="status" value="Pending">--%>

<%--        <div class="form-group">--%>
<%--            <label for="quantity">Miqdor:</label>--%>
<%--            <input type="number" id="quantity" name="quantity" class="form-control" min="1" required>--%>
<%--        </div>--%>

<%--        <button type="submit" class="btn btn-primary">Buyurtma Qilish</button>--%>
<%--    </form>--%>
<%--</div>--%>
<%--<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>--%>
<%--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>--%>
<%--</body>--%>
<%--</html>--%>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Mahsulotni Buyurtma Qilish</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .product-details {
            border: 1px solid #dee2e6;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            transition: transform 0.2s, box-shadow 0.2s;
            max-width: 500px; /* Limit width of the product details */
        }

        .product-details:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 25px rgba(0, 0, 0, 0.2);
        }

        .product-details img {
            max-width: 100%;
            height: auto;
            border-radius: 10px;
            max-height: 300px; /* Limit the height of the image */
        }

        .order-form {
            border: 1px solid #dee2e6;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 400px; /* Limit width of the order form */
        }

        .container {
            display: flex;
            justify-content: space-between;
            align-items: flex-start;
            margin-top: 30px;
            gap: 20px; /* Add space between the product details and form */
        }

        .form-group label {
            font-weight: bold; /* Make the label bold for better readability */
        }
    </style>
</head>
<body>
<div class="container">
    <!-- Product Details -->
    <div class="product-details">
        <h1>${product.foodName}</h1>
        <div class="product-info">
            <img src="${pageContext.request.contextPath}/pictures/${product.imagePath}" alt="${product.foodName}">
        </div>
        <div class="product-info">
            <h3>Narxi: ${product.price}</h3>
            <p>${product.foodDescription}</p>
        </div>
    </div>

    <!-- Order Form -->
    <div class="order-form">
        <h2>Mahsulotni Buyurtma Qilish</h2>
        <form action="${pageContext.request.contextPath}/save-order" method="post">
            <input type="hidden" name="product.id" value="${product.id}">
            <input type="hidden" name="userId" value="${userId}">
            <input type="hidden" name="status" value="Pending">

            <div class="form-group mb-3">
                <label for="quantity">Miqdor:</label>
                <input type="number" id="quantity" name="quantity" class="form-control" min="1"
                       max="${product.quantity}" required>
            </div>

            <button type="submit" class="btn btn-primary">Buyurtma Qilish</button>
        </form>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
</body>
</html>


