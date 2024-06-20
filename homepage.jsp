<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>homepage</title>
  <style>
    body {
      padding: 30px;
      background: linear-gradient(to right, #e2e2e2, #c9d6ff);
    }
    h1 {
      text-align: center;
    }
    button {
      color: blueviolet;
      background-color: #c9d6ff;
      padding: 5px;
      border-radius: 5px;
      font-size: 1rem;
      font-weight: bold;
      border: none;
    }
    button:hover {
      text-decoration: underline;
      color: blue;
    }
    button, div {
      margin-left: 15%;
      font-size: 20px;
      padding: 10px;
    }
    div {
      font-weight: 400;
      color: rgb(12, 11, 11);
    }
    span {
      font-weight: 600;
      font-size: 22px;
      color: black;
    }
  </style>
  <script type="module" src="./homepage.js"></script>
</head>
<body>
  <h1>Welcome to the Homepage</h1>
  <div>First Name: <span id="loggedUserFName"><%= request.getAttribute("loggedUserFName") %></span></div>
  <div>Last Name: <span id="loggedUserLName"><%= request.getAttribute("loggedUserLName") %></span></div>
  <div>Email: <span id="loggedUserEmail"><%= request.getAttribute("loggedUserEmail") %></span></div>
  <button id="logout">Logout</button>

  <script>
    document.getElementById('logout').addEventListener('click', function() {
      window.location.href = 'logout.jsp';
    });
  </script>
</body>
</html>
