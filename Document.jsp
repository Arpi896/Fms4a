<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>File Management System - Documents</title>
    <link rel="stylesheet" href="style.css">
</head>
<body class="documents-page">
    <div class="dashboard-container">
        <header>
            <h1>FILE MANAGEMENT SYSTEM</h1>
            <button class="login-button" onclick="location.href='index.jsp'">Login</button>
        </header>
        <div class="main-content">
            <aside class="sidebar">
                <ul id="categoryList">
                    <li><a href="dashboard.jsp">Railway Board</a></li>
                    <li><a href="dashboard.jsp">Accounts</a></li>
                    <li><a href="dashboard.jsp">Personnel</a></li>
                    <li><a href="dashboard.jsp">S&T</a></li>
                    <li><a href="dashboard.jsp">RPF</a></li>
                    <li><a href="dashboard.jsp">Commercial</a></li>
                    <li><a href="dashboard.jsp">Operating</a></li>
                    <li><a href="dashboard.jsp">Mechanical</a></li>
                </ul>
            </aside>
            <section class="content">
                <h2 id="subcategoryTitle"></h2>
                <table id="documentTable"></table>
                <button onclick="addDocument()">ADD ROW</button>
                <button onclick="saveDocuments()">SAVE</button>
            </section>
        </div>
    </div>
    <script src="script.js"></script>
</body>
</html>
