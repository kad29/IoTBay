<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Profile</title>
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
    </style>
</head>
<body>
<div class="container">
    <h2>Edit Profile</h2>
    <form action="EditProfileServlet" method="post">
        <input type="text" name="fullname" value="${user.fullname}" placeholder="Full Name" required />
        <input type="email" name="email" value="${user.email}" placeholder="Email" required />
        <input type="text" name="phone" value="${user.phone}" placeholder="Phone" required />
        <button type="submit">Save</button>
    </form>
    <a href="profile.jsp">Back to Profile</a>
</div>
</body>
</html> 