<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Book a Table</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        body {
            background: url('https://avatars.mds.yandex.net/i?id=761cbce26f06f6e429e8eb6545c942f8_l-4576810-images-thumbs&n=13') no-repeat center center fixed;
            background-size: cover;
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 600px;
            margin: 50px auto;
            background: rgba(255, 255, 255, 0.9);
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            animation: fadeIn 1s ease-in;
        }
        h2 {
            color: #333;
            margin-bottom: 20px;
            text-align: center;
            font-size: 1.5rem;
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
            outline: none;
            transform: scale(1.02);
        }
        .btn-primary {
            background-color: #f0ad4e;
            border-color: #f0ad4e;
            color: white;
            transition: background-color 0.3s, border-color 0.3s, transform 0.3s;
        }
        .btn-primary:hover {
            background-color: #ec971f;
            border-color: #ec971f;
            transform: scale(1.05);
        }
        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }
        .home-button {
            display: inline-block;
            margin-bottom: 20px;
            text-decoration: none;
            color: #fff;
            background-color: #f0ad4e;
            padding: 8px 16px;
            border-radius: 5px;
            font-weight: bold;
            text-align: center;
            transition: background-color 0.3s, transform 0.3s;
            font-size: 0.875rem; /* Smaller font size */
        }
        .home-button:hover {
            background-color: #ec971f;
            text-decoration: none;
            transform: scale(1.05);
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
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
