<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f4f7;
            text-align: center;
            padding: 50px;
        }
        form {
            background-color: #ffffff;
            border-radius: 8px;
            padding: 30px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            display: inline-block;
        }
        input[type="email"], input[type="password"] {
            padding: 10px;
            margin: 10px 0;
            width: 250px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        button {
            background-color: #5c6bc0;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            border-radius: 4px;
        }
        button:hover {
            background-color: #3f4a8a;
        }
    </style>
</head>
<body>
    <h1>Login to Your Account</h1>
    <form action="login" method="post">
        <input type="email" name="email" required placeholder="Email">
        <input type="password" name="password" required placeholder="Password">
        <button type="submit">Login</button>
    </form>
</body>
</html>