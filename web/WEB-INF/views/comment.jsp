<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Comment Page</title>
    <style>
        /* Inline CSS for styling */
        body {
            font-family: Arial, sans-serif;
            background-image: url('https://img.travelbugphilippines.com/img/united-states/michelin-starred-restaurants-in-las-vegas.jpg'); /* Rasm URL'ini moslang */
            background-size: cover;
            background-position: center;
            margin: 0;
            padding: 0;
        }

        .comment-container {
            width: 80%;
            max-width: 600px;
            margin: 100px auto;
            padding: 20px;
            background: rgba(255, 255, 255, 0.9);
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
            animation: fadeIn 1s ease-in;
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
            transition: border-color 0.3s, box-shadow 0.3s;
        }

        .form-control:focus {
            border-color: #007bff;
            box-shadow: 0 0 8px rgba(0, 123, 255, 0.5);
            outline: none;
        }

        .btn-primary {
            background-color: #007bff;
            border: none;
            color: #fff;
            padding: 12px 24px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 18px;
            margin: 10px 0;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s, transform 0.3s, box-shadow 0.3s;
            box-shadow: 0 4px 8px rgba(0, 123, 255, 0.2);
        }

        .btn-primary:hover {
            background-color: #0056b3;
            transform: scale(1.05);
            box-shadow: 0 6px 12px rgba(0, 123, 255, 0.3);
        }

        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }
    </style>
    <script src="https://unpkg.com/react@18/umd/react.development.js"></script>
    <script src="https://unpkg.com/react-dom@18/umd/react-dom.development.js"></script>
    <script src="https://unpkg.com/@babel/standalone/babel.min.js"></script>
</head>
<body>
<div id="root" class="comment-container">
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

<script type="text/babel">
    const { useState } = React;

    function App() {
        const [hovered, setHovered] = useState(false);

        const handleMouseEnter = () => setHovered(true);
        const handleMouseLeave = () => setHovered(false);

        return (
            <div>
                <button
                    className={`btn-primary ${hovered ? 'hovered' : ''}`}
                    onMouseEnter={handleMouseEnter}
                    onMouseLeave={handleMouseLeave}
                >
                    Create
                </button>
            </div>
        );
    }

    ReactDOM.render(<App />, document.getElementById('root'));
</script>
</body>
</html>
