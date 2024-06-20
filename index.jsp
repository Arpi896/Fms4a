<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>File Management System - Login</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="login-container">
        <h1>FILE MANAGEMENT SYSTEM</h1>
        <form id="loginForm" action="dashboard.jsp" method="post" onsubmit="return handleLogin()">
            <input type="text" id="username" name="username" placeholder="USER NAME" required>
            <input type="password" id="password" name="password" placeholder="PASSWORD" required>
            <button type="submit">LOGIN</button>
        </form>
        <a href="#" id="forgotPassword">Forgot Password</a>
    </div>
    <script>
        function handleLogin() {
            // In a real application, you would perform an AJAX request to validate the user credentials
            // Here, we are simply redirecting to the dashboard for demonstration purposes
            window.location.href = 'dashboard.jsp'; // Redirect to dashboard on successful login
            return false; // Prevent form submission
        }
    </script>
</body>
</html>
