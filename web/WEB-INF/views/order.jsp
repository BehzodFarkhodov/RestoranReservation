<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Mahsulotni Buyurtma Qilish</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        body {
            background-image: url('https://avatars.mds.yandex.net/i?id=0fd820900b9f9832c4f5bca892e8d97a_l-5234139-images-thumbs&n=13');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            color: #000;
        }

        .product-details {
            border: 1px solid #dee2e6;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            transition: transform 0.2s, box-shadow 0.2s;
            max-width: 500px;
            background-color: rgba(255, 255, 255, 0.9);
        }

        .product-details:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 25px rgba(0, 0, 0, 0.2);
        }

        .product-details img {
            max-width: 100%;
            height: auto;
            border-radius: 10px;
            max-height: 300px;
        }

        .order-form {
            border: 1px solid #dee2e6;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            background-color: rgba(255, 255, 255, 0.9);
        }

        .container {
            display: flex;
            justify-content: space-between;
            align-items: flex-start;
            margin-top: 30px;
            gap: 20px;
        }

        .form-group label {
            font-weight: bold;
            color: #000;
        }

        .home-button {
            display: inline-block;
            margin-bottom: 20px;
            padding: 10px 20px;
            background-color: rgba(255, 193, 7, 0.9);
            color: #333;
            border: 1px solid #ffc107;
            border-radius: 5px;
            text-decoration: none;
            font-weight: bold;
            transition: background-color 0.3s;
        }

        .home-button:hover {
            background-color: rgba(255, 193, 7, 1);
        }

        .btn-primary {
            background-color: #ffc107;
            border-color: #ffc107;
        }

        .btn-primary:hover {
            background-color: #e0a800;
            border-color: #e0a800;
        }

        .product-details h1, .product-details h3, .product-details p, .order-form h2 {
            color: #000;
        }

        .error {
            color: red; /* Error xabarining rangini qizilga o'rnatish */
            font-size: 18px; /* Error xabarining font o'lchamini kattaroq qilish */
            font-weight: bold; /* Yozuvni qalin qilish */
            margin-top: 20px; /* Error xabarining yuqorisida bo'sh joy qo'shish */
            text-align: center; /* Matnni markazga yo'naltirish */
        }
    </style>
</head>
<body>
<div class="container">
    <a href="${pageContext.request.contextPath}/" class="home-button">Home</a>
    <div class="product-details">
        <h1>${product.foodName}</h1>
        <div class="product-info">
            <img src="${pageContext.request.contextPath}/pictures/${product.imagePath}" alt="${product.foodName}">
        </div>
        <div class="product-info">
            <h3>Price: ${product.price}</h3>
            <p>${product.foodDescription}</p>
        </div>
    </div>

    <!-- Order Form -->
    <div class="order-form">
        <h2>Choose quantity and create order</h2>
        <form action="${pageContext.request.contextPath}/save-order" method="post">
            <input type="hidden" name="product.id" value="${product.id}">
            <input type="hidden" name="userId" value="${userId}">
            <input type="hidden" name="status" value="Pending">
            <div class="form-group mb-3">
                <label for="quantity">Quantity:</label>
                <input type="number" id="quantity" name="quantity" class="form-control" min="1" max="${product.quantity}" required>
            </div>

            <button type="submit" class="btn btn-primary">Order</button>
        </form>
    </div>
    <div class="error">
        <c:if test="${not empty errorMessage}">
            ${errorMessage}
        </c:if>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
