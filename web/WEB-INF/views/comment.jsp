<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<!DOCTYPE html>--%>
<%--<html lang="en">--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">--%>
<%--    <title>Register</title>--%>
<%--    <!-- Bootstrap CSS -->--%>
<%--    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">--%>
<%--    <style>--%>
<%--        body {--%>
<%--            display: flex;--%>
<%--            justify-content: center;--%>
<%--            align-items: center;--%>
<%--            height: 100vh;--%>
<%--            background: url('https://img.travelbugphilippines.com/img/united-states/michelin-starred-restaurants-in-las-vegas.jpg') no-repeat center center fixed;--%>
<%--            background-size: cover;--%>
<%--            animation: fadeInBody 1s ease-in-out;--%>
<%--        }--%>

<%--        @keyframes fadeInBody {--%>
<%--            from {--%>
<%--                opacity: 0;--%>
<%--            }--%>
<%--            to {--%>
<%--                opacity: 1;--%>
<%--            }--%>
<%--        }--%>

<%--        .container {--%>
<%--            background: rgba(255, 255, 255, 0.9);--%>
<%--            padding: 30px;--%>
<%--            border-radius: 10px;--%>
<%--            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);--%>
<%--            animation: fadeInContainer 1s ease-in-out;--%>
<%--        }--%>

<%--        @keyframes fadeInContainer {--%>
<%--            from {--%>
<%--                opacity: 0;--%>
<%--                transform: scale(0.9);--%>
<%--            }--%>
<%--            to {--%>
<%--                opacity: 1;--%>
<%--                transform: scale(1);--%>
<%--            }--%>
<%--        }--%>

<%--        .table {--%>
<%--            margin-bottom: 30px;--%>
<%--            animation: slideIn 1s ease-in-out;--%>
<%--        }--%>

<%--        @keyframes slideIn {--%>
<%--            from {--%>
<%--                transform: translateY(20px);--%>
<%--                opacity: 0;--%>
<%--            }--%>
<%--            to {--%>
<%--                transform: translateY(0);--%>
<%--                opacity: 1;--%>
<%--            }--%>
<%--        }--%>

<%--        th, td {--%>
<%--            padding: 15px;--%>
<%--            text-align: left;--%>
<%--            border-bottom: 1px solid #ddd;--%>
<%--        }--%>

<%--        th {--%>
<%--            background-color: #007bff;--%>
<%--            color: white;--%>
<%--        }--%>

<%--        tr:hover {--%>
<%--            background-color: #f1f1f1;--%>
<%--        }--%>

<%--        .btn-primary {--%>
<%--            transition: background-color 0.3s, transform 0.3s;--%>
<%--        }--%>

<%--        .btn-primary:hover {--%>
<%--            background-color: #0056b3;--%>
<%--            transform: scale(1.05);--%>
<%--            color: white;--%>
<%--        }--%>

<%--        .form-control:focus {--%>
<%--            box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);--%>
<%--            border-color: #007bff;--%>
<%--        }--%>

<%--        .register-container {--%>
<%--            margin-top: 30px;--%>
<%--        }--%>
<%--    </style>--%>
<%--</head>--%>
<%--<body>--%>
<%--<div class="container">--%>
<%--    <a href="${pageContext.request.contextPath}/" class="home-button">Home</a>--%>
<%--    <h2 class="text-center">Comments</h2>--%>
<%--    <table class="table">--%>
<%--        <thead>--%>
<%--        <tr>--%>
<%--            <th>Username</th>--%>
<%--            <th>Text</th>--%>
<%--            <th>Action</th>--%>
<%--        </tr>--%>
<%--        </thead>--%>
<%--        <tbody>--%>
<%--        <c:forEach var="comment" items="${requestScope.get('comments')}">--%>
<%--            <tr>--%>
<%--                <td>${comment.user.username}</td>--%>
<%--                <td>${comment.text}</td>--%>
<%--                <td>--%>
<%--                    <c:if test="${comment.user.id == userId}">--%>
<%--                    <form action="${pageContext.request.contextPath}/delete" method="post"--%>
<%--                          style="display:inline-block;">--%>
<%--                        <input type="hidden" name="id" value="${comment.id}">--%>
<%--                        <button type="submit" class="btn btn-danger btn-animated">Delete</button>--%>
<%--                    </form>--%>
<%--                    </c:if>--%>
<%--                </td>--%>
<%--            </tr>--%>
<%--        </c:forEach>--%>
<%--        </tbody>--%>
<%--    </table>--%>
<%--    <div class="register-container">--%>
<%--        <h2 class="text-center">Add Comment</h2>--%>
<%--        <form action="${pageContext.request.contextPath}/comment-save" method="post">--%>
<%--            <div class="form-group">--%>
<%--                <label for="text">Comment</label>--%>
<%--                <input type="hidden" name="restaurant.id" value="${restaurant.id}">--%>
<%--                <input type="hidden" name="user.id" value="${userId}">--%>
<%--                <input type="text" id="text" name="text" placeholder="Enter your comment" class="form-control"--%>
<%--                       required/>--%>
<%--            </div>--%>
<%--            <button type="submit" class="btn btn-primary">Create</button>--%>
<%--        </form>--%>
<%--    </div>--%>
<%--</div>--%>

<%--<!-- Bootstrap JS and dependencies -->--%>
<%--<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>--%>
<%--<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>--%>
<%--<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>--%>
<%--</body>--%>
<%--</html>--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Comments</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background: url('https://img.travelbugphilippines.com/img/united-states/michelin-starred-restaurants-in-las-vegas.jpg') no-repeat center center fixed;
            background-size: cover;
            animation: fadeInBody 1s ease-in-out;
        }

        @keyframes fadeInBody {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        .container {
            background: rgba(255, 255, 255, 0.9);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            animation: fadeInContainer 1s ease-in-out;
        }

        @keyframes fadeInContainer {
            from {
                opacity: 0;
                transform: scale(0.9);
            }
            to {
                opacity: 1;
                transform: scale(1);
            }
        }

        .table {
            margin-bottom: 30px;
            animation: slideIn 1s ease-in-out;
            color: #333333; /* Text color for contrast */
        }

        @keyframes slideIn {
            from {
                transform: translateY(20px);
                opacity: 0;
            }
            to {
                transform: translateY(0);
                opacity: 1;
            }
        }

        th, td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #f7b600; /* Yellow */
            color: white;
        }

        tr:hover {
            background-color: #fff9db; /* Light yellow */
        }

        .btn-primary {
            background-color: #f7b600; /* Yellow */
            border-color: #f7b600;
            transition: background-color 0.3s, transform 0.3s;
        }

        .btn-primary:hover {
            background-color: #d19e00; /* Darker yellow */
            transform: scale(1.05);
            color: white;
        }

        .form-control:focus {
            box-shadow: 0 0 5px rgba(247, 182, 0, 0.5); /* Yellow glow */
            border-color: #f7b600;
        }

        .register-container {
            margin-top: 30px;
        }
    </style>
</head>
<body>
<div class="container">
    <a href="${pageContext.request.contextPath}/" class="home-button">Home</a>
    <h2 class="text-center">Comments</h2>
    <table class="table">
        <thead>
        <tr>
            <th>Username</th>
            <th>Text</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="comment" items="${requestScope.get('comments')}">
            <tr>
                <td>${comment.user.username}</td>
                <td>${comment.text}</td>
                <td>
                    <c:if test="${comment.user.id == userId}">
                        <form action="${pageContext.request.contextPath}/delete" method="post"
                              style="display:inline-block;">
                            <input type="hidden" name="id" value="${comment.id}">
                            <button type="submit" class="btn btn-danger btn-animated">Delete</button>
                        </form>
                    </c:if>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <div class="register-container">
        <h2 class="text-center">Add Comment</h2>
        <form action="${pageContext.request.contextPath}/comment-save" method="post">
            <div class="form-group">
                <input type="hidden" name="restaurant.id" value="${restaurant.id}">
                <input type="hidden" name="user.id" value="${userId}">
                <input type="text" id="text" name="text" placeholder="Enter your comment" class="form-control"
                       required/>
            </div>
            <button type="submit" class="btn btn-primary">Send</button>
        </form>
    </div>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script></body>
</html>

