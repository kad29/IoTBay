<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <style>
        body {
            background: black;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            background: darkgray;
            padding: 40px 30px;
            border-radius: 18px;
            box-shadow: 0 4px 24px rgba(0,0,0,0.3);
            width: 350px;
            display: flex;
            flex-direction: column;
            gap: 18px;
        }
        .container h2 {
            color: white;
            margin-bottom: 10px;
        }
        .container input {
            padding: 12px;
            border: none;
            border-radius: 8px;
            margin-bottom: 10px;
            font-size: 16px;
        }
        .container button {
            padding: 12px;
            border: none;
            border-radius: 8px;
            background: lightgray;
            font-weight: bold;
            cursor: pointer;
            transition: background 0.2s;
            margin-bottom: 5px;
        }
        .container button:hover {
            background: gray;
        }
        .container a {
            color: gray;
            text-align: center;
            text-decoration: none;
            font-size: 14px;
        }
        .error {
            color: red;
            margin-bottom: 10px;
            font-size: 14px;
        }
        .success {
            color: greenyellow;
            margin-bottom: 10px;
            font-size: 14px;
        }
    </style>
    <script>
        function validateForm() {
            var username = document.forms["loginForm"]["username"].value;
            var password = document.forms["loginForm"]["password"].value;
            
            if (username == "") {
                alert("Please enter your username");
                return false;
            }
            if (password == "") {
                alert("Please enter your password");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
<div class="container">
    <h2>Login</h2>
    
    <% if (request.getAttribute("error") != null) { %>
        <div class="error">${error}</div>
    <% } %>
    
    <% if (request.getAttribute("success") != null) { %>
        <div class="success">${success}</div>
    <% } %>
    
    <form name="loginForm" action="LoginServlet" method="post" onsubmit="return validateForm()">
        <input type="text" name="username" placeholder="Username" required />
        <input type="password" name="password" placeholder="Password" required />
        <button type="submit">Login</button>
    </form>
    <a href="register.jsp">Don't have an account? Register</a>
</div>
</body>
</html> 