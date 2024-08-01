<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <title>Create Restaurant</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .form-container {
            background-color: white; /* White background for form container */
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .btn-primary, .btn-home {
            background-color: #FFD700; /* Yellow color for buttons */
            border-color: #FFD700;
        }
        .btn-primary:hover, .btn-home:hover {
            background-color: #FFC107; /* Slightly darker yellow for hover state */
            border-color: #FFC107;
        }
        body {
            background-image: url('https://avatars.mds.yandex.net/i?id=f6fe17cc3ed91320956116567ed1596d_l-5256718-images-thumbs&n=13');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            background-attachment: fixed;
            color: #333; /* Default text color */
        }
        .home-button {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
<div class="container mt-5">
    <div class="home-button">
        <a href="${pageContext.request.contextPath}/create-own-restaurant-main" class="btn btn-home">Back</a>
    </div>
    <div class="form-container">
        <h2 class="text-center">Create Restaurant</h2>
        <form action="${pageContext.request.contextPath}/create-own-restaurant" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" id="name" name="name" class="form-control" required />
            </div>
            <div class="form-group">
                <label for="address">Address</label>
                <input type="text" id="address" name="address" class="form-control" required />
            </div>
            <div class="form-group">
                <label for="location">Location</label>
                <input type="text" id="location" name="location" class="form-control" required />
            </div>
            <div class="form-group">
                <label for="phone">Phone</label>
                <input type="text" id="phone" name="phone" class="form-control" required />
            </div>
            <div class="form-group">
                <label for="type">Type</label>
                <select id="type" name="type" class="form-control" required>
                    <option value="RESTAURANT">RESTAURANT</option>
                    <option value="BAR">BAR</option>
                    <option value="CAFE_AND_BAKERY">CAFE_AND_BAKERY</option>
                    <option value="FAST_FOOD">FAST_FOOD</option>
                    <option value="PICNIC_ZONE">PICNIC_ZONE</option>
                    <option value="NATIONAL_RESTAURANT">NATIONAL_RESTAURANT</option>
                </select>
            </div>
            <div class="form-group">
                <label for="picture">Picture</label>
                <input type="file" id="picture" name="picture" class="form-control-file" required />
            </div>
            <button type="submit" class="btn btn-primary btn-block">Create</button>
        </form>
    </div>
</div>
</body>
</html>
