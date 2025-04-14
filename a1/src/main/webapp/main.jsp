<!DOCTYPE html>
<html>
<title>Main Page</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<style>
* {
  box-sizing: border-box;
}
body {
  font-family: Arial, Helvetica, sans-serif;
}

/*Style the header*/
header {
  background-color: #666;
  float: left;
  width: 100%;
  padding: 10px;
  font-size: 30px;
  color: white;
}

/*Style for Logo*/
.Logo {
  float:left;
}

.LogOut{
  float:right;
}
/* Create two columns/boxes that floats next to each other */
nav {
  float: left;
  width: 100%;  
  background: #ccc;
  padding: 10px;
}

button{
  width: 24.6%;
  border: 2px;
  border-radius: 20px;
  padding: 15px;
  font-size: 15px;
}
</style>
<body>

  <%
    String username = request.getParameter("username");
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    // String submitted = request.getParameter("submitted");
  %>


  <%-- Check if form has been submitted --%>
  <%-- <%
    if (submitted != null && submitted.equals("yes")) {
  %> --%>
  <header>
  <!-- Logo of the page link back to home page -->
  <a href="main.jsp" class="Logo">
    <img src= "temp.jpg" alt = "Logo" style = "width:150px;">
  </a>
    <h1 style= "text-align: center;">Hi, <%= username %></h1>
    
  <!-- Link to logout page -->
  <a href="logout.jsp" class="LogOut"><b>Log out</b></a>
  <button class="LogOut"><b>Cart</b></button>

  </header>

  <!-- Navigation -->
  <nav>
      <button href="#"><b>About</b></button>
      <button href="#"><b>Contact</b></button>
      <button href="landing.jsp"><b>Landing Page</b></button>
      <button href="#"><b>Account</b></button>
    </nav>

  <%-- <% } else { %>
    <body>
    <h2>Please Register</h2>
    <button href = "register.jsp"><b>Register</b></button>
  <% } %> --%>
</body>
</html>
