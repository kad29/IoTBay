<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>User Registration</title>
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
            var username = document.forms["registerForm"]["username"].value;
            var fullname = document.forms["registerForm"]["fullname"].value;
            var email = document.forms["registerForm"]["email"].value;
            var password = document.forms["registerForm"]["password"].value;
            var phone = document.forms["registerForm"]["phone"].value;
            
            if (username == "") {
                alert("Please enter your username");
                return false;
            }
            if (username.length < 3) {
                alert("Username must be at least 3 characters long");
                return false;
            }
            if (fullname == "") {
                alert("Please enter your full name");
                return false;
            }
            if (email == "") {
                alert("Please enter your email");
                return false;
            }
            if (!email.match(/^[^\s@]+@[^\s@]+\.[^\s@]+$/)) {
                alert("Please enter a valid email address");
                return false;
            }
            if (password == "") {
                alert("Please enter your password");
                return false;
            }
            if (password.length < 6) {
                alert("Password must be at least 6 characters long");
                return false;
            }
            if (phone == "") {
                alert("Please enter your phone number");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
<div class="container">
    <h2>Register</h2>
    
    <% if (request.getAttribute("error") != null) { %>
        <div class="error">${error}</div>
    <% } %>
    
    <% if (request.getAttribute("success") != null) { %>
        <div class="success">${success}</div>
    <% } %>
    
    <form name="registerForm" action="RegisterServlet" method="post" onsubmit="return validateForm()">
        <input type="text" name="username" placeholder="Username" required />
        <input type="text" name="fullname" placeholder="Full Name" required />
        <input type="email" name="email" placeholder="Email" required />
        <input type="password" name="password" placeholder="Password" required />
        <input type="text" name="phone" placeholder="Phone" required />
        <button type="submit">Register</button>
    </form>
    <a href="login.jsp">Already have an account? Login</a>
</div>
</body>
</html> 