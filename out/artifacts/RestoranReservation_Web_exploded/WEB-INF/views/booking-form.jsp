

<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<%--<!DOCTYPE html>--%>
<%--<html lang="en">--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <title>Book a Table</title>--%>
<%--    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/5.3.0/css/bootstrap.min.css">--%>
<%--    <style>--%>
<%--        body {--%>
<%--            background-color: #f4f4f4;--%>
<%--            font-family: Arial, sans-serif;--%>
<%--        }--%>
<%--        .container {--%>
<%--            max-width: 600px;--%>
<%--            margin: 50px auto;--%>
<%--            background: #fff;--%>
<%--            padding: 30px;--%>
<%--            border-radius: 8px;--%>
<%--            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);--%>
<%--        }--%>
<%--        h2 {--%>
<%--            color: #333;--%>
<%--            margin-bottom: 20px;--%>
<%--            text-align: center;--%>
<%--        }--%>
<%--        .form-label {--%>
<%--            color: #333;--%>
<%--            font-weight: bold;--%>
<%--        }--%>
<%--        .form-control {--%>
<%--            border: 2px solid #ddd;--%>
<%--            border-radius: 5px;--%>
<%--            padding: 10px;--%>
<%--            transition: border-color 0.3s, box-shadow 0.3s;--%>
<%--        }--%>
<%--        .form-control:focus {--%>
<%--            border-color: #f0ad4e; /* Yellow color */--%>
<%--            box-shadow: 0 0 8px rgba(240, 173, 78, 0.5);--%>
<%--        }--%>
<%--        .btn-primary {--%>
<%--            background-color: #f0ad4e; /* Yellow color */--%>
<%--            border-color: #f0ad4e;--%>
<%--            color: white;--%>
<%--            transition: background-color 0.3s, border-color 0.3s;--%>
<%--        }--%>
<%--        .btn-primary:hover {--%>
<%--            background-color: #ec971f; /* Darker yellow */--%>
<%--            border-color: #ec971f;--%>
<%--        }--%>
<%--    </style>--%>
<%--</head>--%>
<%--<body>--%>
<%--<div class="container">--%>
<%--    <a href="${pageContext.request.contextPath}/" class="home-button">Home</a>--%>
<%--    <h2>Book a Table</h2>--%>
<%--    <form action="${pageContext.request.contextPath}/booking-table" method="post">--%>
<%--        <input type="hidden" name="restaurantId" value="${restaurantId}">--%>
<%--        <div class="mb-3">--%>
<%--            <label for="numberOfPeople" class="form-label">Number of People</label>--%>
<%--            <input type="number" class="form-control" id="numberOfPeople" name="numberOfPeople" required>--%>
<%--        </div>--%>
<%--        <div class="mb-3">--%>
<%--            <label for="phoneNumber" class="form-label">Phone Number</label>--%>
<%--            <input type="text" class="form-control" id="phoneNumber" name="phoneNumber" required>--%>
<%--        </div>--%>
<%--        <div class="mb-3">--%>
<%--            <label for="reservationDate" class="form-label">Reservation Date</label>--%>
<%--            <input type="datetime-local" class="form-control" id="reservationDate" name="reservationDate" required>--%>
<%--        </div>--%>
<%--        <button type="submit" class="btn btn-primary w-100">Book Now</button>--%>
<%--    </form>--%>
<%--</div>--%>
<%--<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>--%>
<%--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>--%>
<%--</body>--%>
<%--</html>--%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Book a Table</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/5.3.0/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f4f4f4;
            font-family: Arial, sans-serif;
        }
        .container {
            max-width: 600px;
            margin: 50px auto;
            background: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        h2 {
            color: #333;
            margin-bottom: 20px;
            text-align: center;
        }
        .form-label {
            color: #333;
            font-weight: bold;
        }
        .form-control {
            border: 2px solid #ddd;
            border-radius: 5px;
            padding: 10px;
            transition: border-color 0.3s, box-shadow 0.3s;
        }
        .form-control:focus {
            border-color: #f0ad4e;
            box-shadow: 0 0 8px rgba(240, 173, 78, 0.5);
        }
        .btn-primary {
            background-color: #f0ad4e;
            border-color: #f0ad4e;
            color: white;
            transition: background-color 0.3s, border-color 0.3s;
        }
        .btn-primary:hover {
            background-color: #ec971f;
            border-color: #ec971f;
        }
    </style>
</head>
<body>
<div class="container">
    <a href="${pageContext.request.contextPath}/" class="home-button">Home</a>
    <h2>Book a Table at ${restaurant.name}</h2>
    <form action="${pageContext.request.contextPath}/booking-table" method="post">
        <input type="hidden" name="restaurantId" value="${restaurantId}">
        <div class="mb-3">
            <label for="numberOfPeople" class="form-label">Number of People</label>
            <input type="number" class="form-control" id="numberOfPeople" name="numberOfPeople" required>
        </div>
        <div class="mb-3">
            <label for="phoneNumber" class="form-label">Phone Number</label>
            <input type="text" class="form-control" id="phoneNumber" name="phoneNumber" required>
        </div>
        <div class="mb-3">
            <label for="reservationDate" class="form-label">Reservation Date</label>
            <input type="datetime-local" class="form-control" id="reservationDate" name="reservationDate" required>
        </div>
        <div class="mb-3">
            <label for="type" class="form-label">Table Type</label>
            <select class="form-control" id="type" name="type" required>
                <option value="PREMIUM">Premium</option>
                <option value="SIMPLE">Simple</option>
                <option value="MIDDLE">Middle</option>
            </select>
        </div>
        <div class="mb-3">
            <label for="nearTheWindow" class="form-label">Near the Window</label>
            <select class="form-control" id="nearTheWindow" name="nearTheWindow" required>
                <option value="YES">Yes</option>
                <option value="NO">No</option>
            </select>
        </div>
        <button type="submit" class="btn btn-primary w-100">Book Now</button>
    </form>
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
</body>
</html>
