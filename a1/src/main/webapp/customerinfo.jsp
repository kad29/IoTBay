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
<title>Customer Info</title>
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
  width: 100px;
  border: 2px;
  border-radius: 20px;
  padding: 15px;
  font-size: 15px;
}

.Search {
  width: 500px;
  height: 40px;
  border: 2px solid #ccc;
  border-radius: 20px;
  font-size: 15px;
  font-family: Arial, Helvetica, sans-serif;
  padding: 12px 20p;x;
  margin: 8px 0;
}
</style>

<body>
  <header>
  <!-- Logo of the page link back to home page -->
  <a href="customerinfo.jsp" class="Logo">
    <img src= "temp.jpg" alt = "Logo" style = "width:150px;">
  </a>
    <h1 style= "text-align: center;">Customer Information</h1>
    <h3 style= "text-align: center;">Hi, <%= customer.getName() %></h3>
    
  <!-- Link to logout page -->
  <a href="logout.jsp" class="LogOut"><b>Log out</b></a>
  <a href="welcome.jsp" style = "position:absolute; top:0; right:0;"><button><b>Back</b></button></a>

  </header>

  <!-- Navigation -->
<nav>
    <input type="text" class ="Search" placeholder="  Search..">
    <a href="#"><button><b>Search</b></button></a>
</nav>
</body>
</html>
