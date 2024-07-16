<%--
  Created by IntelliJ IDEA.
  User: z.farhodov
  Date: 16.07.2024
  Time: 14:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Verification</title>
</head>
<body>
<h1>Verify</h1>
<form action="${pageContext.request.contextPath}/verify" method="post">
    <label for="email">Email:</label>
    <input type="email" id="email" name="email" required><br>
    <label for="code">Verification Code:</label>
    <input type="text" id="code" name="code" required><br>
    <button type="submit">Verify</button>
</form>
</body>
</html>
