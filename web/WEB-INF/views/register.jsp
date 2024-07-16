<%--
  Created by IntelliJ IDEA.
  User: z.farhodov
  Date: 16.07.2024
  Time: 14:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
</head>
<body>
<h1>Register</h1>
<form action="${pageContext.request.contextPath}/register" method="post">
    <label for="username">Username:</label>
    <input type="text" id="username" name="username" required><br>
    <label for="email">Email:</label>
    <input type="email" id="email" name="email" required><br>
    <button type="submit">Register</button>
</form>
</body>
</html>
