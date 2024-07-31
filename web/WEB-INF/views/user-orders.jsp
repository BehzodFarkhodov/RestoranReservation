<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Order History</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 20px;
        }
        h1 {
            text-align: center;
            color: #343a40;
        }
        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            box-shadow: 0 2px 3px rgba(0,0,0,0.1);
        }
        th, td {
            padding: 12px;
            border: 1px solid #dee2e6;
            text-align: center;
        }
        th {
            background-color: #343a40;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #ddd;
        }
        p {
            text-align: center;
            color: #6c757d;
        }
        .cancel-button {
            background-color: #dc3545;
            color: white;
            border: none;
            border-radius: 5px;
            padding: 8px 16px;
            cursor: pointer;
            font-size: 14px;
            transition: background-color 0.3s, transform 0.2s;
        }
        .cancel-button:hover {
            background-color: #c82333; /* Yengilroq qizil rang (hover effekti) */
        }
        .cancel-button:active {
            transform: scale(0.95); /* Qimirlaydigan effekt */
        }
    </style>
</head>
<body>
<h1>Order History</h1>
<c:choose>
    <c:when test="${empty orders}">
        <p>No orders found.</p>
    </c:when>
    <c:otherwise>
        <table>
            <thead>
            <tr>
                <th>Product</th>
                <th>Restaurant</th>
                <th>Quantity</th>
                <th>Status</th>
                <th>Time</th>
                <th>Action</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="order" items="${orders}">
                <tr>
                    <td>${order.product.getFoodName()}</td>
                    <td>${order.product.restaurant.getName()}</td>
                    <td>${order.quantity}</td>
                    <td>${order.status}</td>
                    <td>${order.getCreatedDateTime()}</td>
                    <td>
                        <form action="${pageContext.request.contextPath}/cancel-order" method="post">
                            <input type="hidden" name="orderId" value="${order.id}">
                            <button type="submit" class="cancel-button">Cancel</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </c:otherwise>
</c:choose>
</body>
</html>
