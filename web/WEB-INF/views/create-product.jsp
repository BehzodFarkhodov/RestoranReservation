<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>--%>
<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>Create Restaurant</title>--%>
<%--    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">--%>
<%--</head>--%>
<%--<body>--%>
<%--<div class="container mt-5">--%>
<%--    <h2>Create Restaurant</h2>--%>
<%--    <form action="${pageContext.request.contextPath}/create-product" method="post" enctype="multipart/form-data">--%>
<%--        <div class="form-group">--%>
<%--            <label for="foodName">foodName</label>--%>
<%--            <input type="text" id="foodName" name="foodName" class="form-control" required />--%>
<%--        </div>--%>
<%--        <div class="form-group">--%>
<%--            <label for="foodDescription">foodDescription</label>--%>
<%--            <input type="text" id="foodDescription" name="foodDescription" class="form-control" required />--%>
<%--        </div>--%>
<%--        <div class="form-group">--%>
<%--            <label for="price">price</label>--%>
<%--            <input type="number" id="price" name="price" class="form-control" required />--%>
<%--        </div>--%>
<%--        <div class="form-group">--%>
<%--            <label for="quantity">quantity</label>--%>
<%--            <input type="number" id="quantity" name="quantity" class="form-control" required />--%>
<%--        </div>--%>

<%--        <div class="form-group">--%>
<%--            <label for="imagePath">imagePath</label>--%>
<%--            <input type="file" id="imagePath" name="imageFile" class="form-control-file" required />--%>
<%--        </div>--%>
<%--        <button type="submit" class="btn btn-primary">Create</button>--%>
<%--    </form>--%>
<%--</div>--%>
<%--</body>--%>
<%--</html>--%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <title>Create Product</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
    <h2>Create Product</h2>
    <form action="${pageContext.request.contextPath}/create-product" method="post" enctype="multipart/form-data">
        <div class="form-group">
            <label for="foodName">Food Name</label>
            <input type="text" id="foodName" name="foodName" class="form-control" required/>
        </div>
        <div class="form-group">
            <label for="foodDescription">Food Description</label>
            <input type="text" id="foodDescription" name="foodDescription" class="form-control" required/>
        </div>
        <div class="form-group">
            <label for="price">Price</label>
            <input type="number" id="price" name="price" class="form-control" required/>
        </div>
        <div class="form-group">
            <label for="quantity">Quantity</label>
            <input type="number" id="quantity" name="quantity" class="form-control" required/>
        </div>
        <div class="form-group">
            <label for="imagePath">Image</label>
            <input type="file" id="imagePath" name="imageFile" class="form-control-file" required/>
        </div>

        <div class="form-group">
            <label for="restaurant">Select Restaurant</label>
            <select id="restaurant" name="restaurantId" class="form-control" required>
                <c:forEach var="restaurant" items="${restaurants}">
                    <option value="${restaurant.id}">${restaurant.name}</option>
                </c:forEach>
            </select>
        </div>

        <button type="submit" class="btn btn-primary">Create</button>
    </form>
</div>
</body>
</html>
