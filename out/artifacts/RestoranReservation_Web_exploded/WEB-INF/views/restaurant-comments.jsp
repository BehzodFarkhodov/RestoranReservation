<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: z.farhodov
  Date: 31.07.2024
  Time: 10:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Restaurant Comments</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('https://i.pinimg.com/originals/c5/ca/84/c5ca845e68f7545bea10789bc588638d.jpg');
            background-size: cover;
            background-position: center;
            color: #333;
            text-align: center;
            padding: 50px;
        }
        .comment-container {
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 15px;
            padding: 30px;
            margin-top: 50px;
            display: inline-block;
        }
        .comment {
            text-align: left;
            margin-bottom: 20px;
        }
        .username {
            font-weight: bold;
        }
        .date {
            color: #666;
            font-size: 12px;
        }
    </style>
</head>
<body>
<a class="button home-button" href="${pageContext.request.contextPath}/">Home</a>
<div class="comment-container">
    <h1>Comments for Your Restaurant</h1>
    <c:forEach var="comment" items="${comments}">
        <div class="comment">
            <p class="username">${comment.usernameOrEmail}</p>
            <p class="date">${comment.createdDate}</p>
            <p>${comment.text}</p>
        </div>
    </c:forEach>
</div>
</body>
</html>

