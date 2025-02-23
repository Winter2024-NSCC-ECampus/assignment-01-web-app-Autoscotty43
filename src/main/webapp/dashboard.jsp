<%@ page import="comjaredmodel.User" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f4f7;
            text-align: center;
            padding: 50px;
        }
        h1 {
            color: #5c6bc0;
        }
        a {
            color: #e53946;
            text-decoration: none;
            font-weight: bold;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <h1>Welcome, <%= session.getAttribute("user") != null ? ((comjaredmodel.User) session.getAttribute("user")).getName() : "Guest" %></h1>
    <a href="logout">Logout</a>
</body>
</html>