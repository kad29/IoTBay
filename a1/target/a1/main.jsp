<!DOCTYPE html>
<%@page import="model.Customer"%>

<html>
<%
    // Retrieve the Customer object from the session
    Customer customer = (Customer) session.getAttribute("customer");
    // Check if the customer object exists in the session
    if (customer == null) {
        // If not, redirect the user to the login or registration page
        response.sendRedirect("register.jsp"); // Or your login page
        return; // Stop further processing of this page
    }
%>
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
  <header>
  <!-- Logo of the page link back to home page -->
  <a href="main.jsp" class="Logo">
    <img src= "temp.jpg" alt = "Logo" style = "width:150px;">
  </a>
    <h1 style= "text-align: center;">Hi, <%= customer.getName() %></h1>
    
  <!-- Link to logout page -->
  <a href="logout.jsp" class="LogOut"><b>Log out</b></a>
  <button class="LogOut"><b>Cart</b></button>

  </header>

  <!-- Navigation -->
<nav>
    <a href="#"><button><b>About</b></button></a>
    <a href="#"><button><b>Contact</b></button></a>
    <a href="landing.jsp"><button><b>Landing Page</b></button></a>
    <a href="#"><button><b>Account</b></button></a>
</nav>
</body>
</html>
