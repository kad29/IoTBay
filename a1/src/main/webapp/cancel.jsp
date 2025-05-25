<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Cancel Registration</title>
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
            align-items: center;
        }
        .container h2 {
            color: white;
            margin-bottom: 10px;
        }
        .container p {
            color: white;
            margin-bottom: 20px;
        }
        .container button {
            padding: 12px 24px;
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
    <h2>Cancel Registration</h2>
    <p>Are you sure you want to cancel your registration?</p>
    <form action="CancelServlet" method="post">
        <button type="submit">Yes, Cancel</button>
    </form>
    <a href="profile.jsp">No, go back</a>
</div>
</body>
</html> 