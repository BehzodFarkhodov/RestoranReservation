<%--
  Created by IntelliJ IDEA.
  User: Victus
  Date: 7/30/2024
  Time: 1:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form action="${pageContext.request.contextPath}/comment-save" method="post">
    <div class="form-group">
        <label for="text">Comment</label>
        <input type="hidden" name="restaurant.id" value="${restaurant.id}">
        <input type="hidden" name="user.id" value="${userId}">
        <input type="text" id="text" name="text" placeholder="enter comment" class="form-control" required/>
    </div>
    <button type="submit" class="btn btn-primary">Create</button>
</form>
</body>
</html>
