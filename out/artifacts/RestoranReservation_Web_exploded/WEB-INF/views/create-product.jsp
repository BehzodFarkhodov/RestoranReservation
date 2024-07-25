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
    <form action="${pageContext.request.contextPath}/create-product" method="post" enctype="multipart/form-data">
        <div class="form-group">
            <label for="foodName">foodName</label>
            <input type="text" id="foodName" name="foodName" class="form-control" required />
        </div>
        <div class="form-group">
            <label for="foodDescription">foodDescription</label>
            <input type="text" id="foodDescription" name="foodDescription" class="form-control" required />
        </div>
        <div class="form-group">
            <label for="price">price</label>
            <input type="number" id="price" name="price" class="form-control" required />
        </div>
        <div class="form-group">
            <label for="quantity">quantity</label>
            <input type="number" id="quantity" name="quantity" class="form-control" required />
        </div>

        <div class="form-group">
            <label for="imagePath">imagePath</label>
            <input type="file" id="imagePath" name="imagePath" class="form-control-file" accept="image/jpeg" required />
        </div>
        <button type="submit" class="btn btn-primary">Create</button>
    </form>
</div>
</body>
</html>