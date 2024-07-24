<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <title>Create Restaurant</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
    <h2>Create Restaurant</h2>
    <form action="${pageContext.request.contextPath}/create-restaurant" method="post" enctype="multipart/form-data">
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
        <button type="submit" class="btn btn-primary">Create</button>
    </form>
</div>
</body>
</html>
