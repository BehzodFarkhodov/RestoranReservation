<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <title>Create Product</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-image: url('https://i.pinimg.com/originals/a3/ad/20/a3ad20e0bff1e18860d1b8b94701565d.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            background-attachment: fixed; /* Ensures the image stays fixed when scrolling */
            color: #333; /* Default text color */
        }
        .form-container {
            background-color: rgba(255, 255, 255, 0.9); /* White with slight transparency */
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-top: 50px;
        }
        .btn-primary, .btn-back {
            background-color: #FFD700; /* Yellow color for buttons */
            border-color: #FFD700;
        }
        .btn-primary:hover, .btn-back:hover {
            background-color: #FFC107; /* Slightly darker yellow for hover state */
            border-color: #FFC107;
        }
        .form-label {
            color: #333; /* Dark text color for labels */
        }
    </style>
</head>
<body>
<div class="container mt-5">
    <div class="form-container">
        <a href="${pageContext.request.contextPath}/create-own-restaurant-main" class="btn btn-back mt-3">Back</a>
        <h2 class="text-center">Create Product</h2>
        <form action="${pageContext.request.contextPath}/create-own-product" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label for="foodName" class="form-label">Food Name</label>
                <input type="text" id="foodName" name="foodName" class="form-control" required/>
            </div>
            <div class="form-group">
                <label for="foodDescription" class="form-label">Food Description</label>
                <input type="text" id="foodDescription" name="foodDescription" class="form-control" required/>
            </div>
            <div class="form-group">
                <label for="price" class="form-label">Price</label>
                <input type="number" id="price" name="price" class="form-control" required/>
            </div>
            <div class="form-group">
                <label for="quantity" class="form-label">Quantity</label>
                <input type="number" id="quantity" name="quantity" class="form-control" required/>
            </div>
            <div class="form-group">
                <label for="imagePath" class="form-label">Image</label>
                <input type="file" id="imagePath" name="imageFile" class="form-control-file" required/>
            </div>

            <div class="form-group">
                <label for="restaurant" class="form-label">Select Restaurant</label>
                <select id="restaurant" name="restaurantId" class="form-control" required>
                    <c:forEach var="restaurant" items="${restaurants}">
                        <option value="${restaurant.id}">${restaurant.name}</option>
                    </c:forEach>
                </select>
            </div>

            <button type="submit" class="btn btn-primary btn-block">Create</button>
        </form>
    </div>
</div>
</body>
</html>
