<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Comment Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('https://i.pinimg.com/originals/c5/ca/84/c5ca845e68f7545bea10789bc588638d.jpg');
            background-size: cover;
            background-position: center;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .comment-container {
            width: 80%;
            max-width: 600px;
            padding: 20px;
            background: rgba(255, 255, 255, 0.9); /* Semi-transparent white */
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            border: 2px solid #ffd700; /* Yellow border */
            text-align: center;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-control {
            width: 100%;
            padding: 12px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
        }

        .btn-primary,
        .btn-home {
            background-color: #ffd700; /* Yellow background */
            border: none;
            color: #fff;
            padding: 12px 24px;
            font-size: 18px;
            cursor: pointer;
            border-radius: 5px;
            text-align: center;
            transition: background-color 0.3s, transform 0.3s, box-shadow 0.3s;
            margin-top: 10px;
        }

        .btn-primary:hover,
        .btn-home:hover {
            background-color: #e5c100; /* Darker yellow on hover */
            transform: scale(1.05);
        }
    </style>
</head>
<body>
<div class="comment-container">
    <a href="${pageContext.request.contextPath}/" class="home-btn">Home</a> <!-- Home button -->
    <form action="${pageContext.request.contextPath}/comment-save" method="post">
        <div class="form-group">
            <label for="text">Comment</label>
            <input type="hidden" name="restaurant.id" value="${restaurant.id}">
            <input type="hidden" name="user.id" value="${userId}">
            <input type="text" id="text" name="text" placeholder="Enter your comment" class="form-control" required />
        </div>
        <button type="submit" class="btn-primary">Create</button>
    </form>
</div>
</body>
</html>
