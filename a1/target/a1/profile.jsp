<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Profile</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            background-color: #f5f5f5;
        }
        .container {
            max-width: 800px;
            margin: 0 auto;
            background-color: white;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }
        h1 {
            color: #333;
            margin-bottom: 20px;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
            color: #666;
        }
        .form-group input {
            width: 100%;
            padding: 8px;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-sizing: border-box;
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
        .button-group {
            margin-top: 20px;
            display: flex;
            gap: 10px;
        }
        button {
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-weight: bold;
        }
        .update-btn {
            background-color: green;
            color: white;
        }
        .cancel-btn {
            background-color: red;
            color: white;
        }
        .back-btn {
            background-color: skyblue;
            color: white;
        }
        button:hover {
            opacity: 0.8;
        }
    </style>
    <script>
        function validateForm() {
            var name = document.forms["profileForm"]["name"].value;
            var email = document.forms["profileForm"]["email"].value;
            var phone = document.forms["profileForm"]["phone"].value;
            
            if (name == "") {
                alert("Please enter your full name");
                return false;
            }
            if (email == "") {
                alert("Please enter your email");
                return false;
            }
            if (!email.match(/^[^\s@]+@[^-\s@]+\.[^\s@]+$/)) {
                alert("Please enter a valid email address");
                return false;
            }
            if (phone == "") {
                alert("Please enter your phone number");
                return false;
            }
            if (!phone.match(/^\d{10}$/)) {
                alert("Please enter a valid 10-digit phone number");
                return false;
            }
            return true;
        }
        
        function confirmCancel() {
            return confirm("Are you sure you want to cancel your registration? This action cannot be undone.");
        }
    </script>
</head>
<body>
    <div class="container">
        <h1>User Profile</h1>
        
        <% if (request.getAttribute("message") != null) { %>
            <div class="success">${message}</div>
        <% } %>
        
        <% if (request.getAttribute("error") != null) { %>
            <div class="error">${error}</div>
        <% } %>
        
        <form name="profileForm" action="ProfileServlet" method="post" onsubmit="return validateForm()">
            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" value="${user.username}" required>
            </div>
            
            <div class="form-group">
                <label for="name">Full Name:</label>
                <input type="text" id="name" name="name" value="${user.fullName}" required>
            </div>
            
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" value="${user.email}" required>
            </div>
            
            <div class="form-group">
                <label for="phone">Phone:</label>
                <input type="tel" id="phone" name="phone" value="${user.phone}" required>
            </div>
            
            <div class="button-group">
                <button type="submit" class="update-btn">Update Profile</button>
                <a href="main.jsp"><button type="button" class="back-btn">Back to Main</button></a>
                <a href="cancel.jsp"><button type="button" class="cancel-btn" onclick="return confirmCancel()">Cancel Registration</button></a>
            </div>
        </form>
    </div>
</body>
</html> 