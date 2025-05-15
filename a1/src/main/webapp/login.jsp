<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8" />
  <title>Login</title>
  <style>
    body {
      background-color: #2d2d2d;
      color: #fff;
      font-family: Arial, sans-serif;
    }
    .form-container {
      max-width: 400px;
      margin: 80px auto;
      background: #444;
      padding: 20px;
      border-radius: 15px;
      box-shadow: 0 0 10px #000;
    }
    input {
      width: 100%;
      padding: 10px;
      margin: 10px 0;
      border: none;
      border-radius: 8px;
    }
    .btn {
      background-color: #ddd;
      color: #000;
      font-weight: bold;
      cursor: pointer;
    }
  </style>
</head>
<body>
  <div class="form-container">
    <h2>Login</h2>
    <form>
      <input type="text" placeholder="Email" />
      <input type="password" placeholder="Password" />
      <input type="submit" value="Login" class="btn" />
    </form>
  </div>
</body>
</html>
