<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <title>Create Restaurant</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<%--<div class="container mt-5">
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
&lt;%&ndash;                <c:forEach items="${restaurantTypes}" var="type">&ndash;%&gt;
&lt;%&ndash;                    <option value="${type}">${type}</option>&ndash;%&gt;
&lt;%&ndash;                </c:forEach>&ndash;%&gt;
         <option value="" selected>Empty</option>
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
            <input type="file" id="picture" name="picture"  class="form-control-file" />
        </div>
        <button type="submit" class="btn btn-primary">Create</button>
    </form>
</div>--%>

<form action="${pageContext.request.contextPath}/create-restaurant" method="post" enctype="multipart/form-data">
    <input type="text" name="name" placeholder="enter name" autofocus required>
    <input type="text" name="address" placeholder="enter address" autofocus required>
    <input type="text" name="location" placeholder="enter location" autofocus required>
    <input type="text" name="phone" placeholder="enter phone" autofocus required>
    <label for="type"></label><select id="type" name="type" class="form-control" required>
        <option value="" selected>Empty</option>
        <option value="RESTAURANT">RESTAURANT</option>
        <option value="BAR">BAR</option>
        <option value="CAFE_AND_BAKERY">CAFE_AND_BAKERY</option>
        <option value="FAST_FOOD">FAST_FOOD</option>
        <option value="PICNIC_ZONE">PICNIC_ZONE</option>
        <option value="NATIONAL_RESTAURANT">NATIONAL_RESTAURANT</option>
    </select>

    <input type="file" id="picture" name="picturePath"  class="form-control-file" />
    <button>Submit</button>
</form>

</body>
</html>
