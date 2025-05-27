<!DOCTYPE html>
<%@page import="model.Customer"%>
<%-- <%@page import="model.Customerinfo"%> --%>
<%@ page import="java.util.List"%>
<%@page contentType="text/html;charset=UTF-8" language="java" %>

<html>

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
/* Style the table */
td, th {
  text-align: center;
}
</style>

<body>
  <header>
  <!-- Logo of the page link back to home page -->
  <a href="customerinfo.jsp" class="Logo">
    <img src= "temp.jpg" alt = "Logo" style = "width:150px;">
  </a>
    <h1 style= "text-align: center;">Customer Information</h1>
    <%-- <h3 style= "text-align: center;">Hi, <%= Manager.getName() %></h3> --%>
    
  <!-- Link to logout page -->
  <a href="logout.jsp" class="LogOut"><b>Log out</b></a>
  <a href="manageracc.jsp" style = "position:absolute; top:0; right:0;"><button><b>Back</b></button></a>

  </header>

  <!-- Navigation -->
<nav>
    <input type="text" class ="Search" placeholder="   Search..">
    <a href="#"><button><b>Search</b></button></a>
    <a href="#"><button style = "float: right;"><b>Create</b></button></a>
</nav>

<%
    List<Customer> customers = (List<Customer>) request.getAttribute("customers");
    if (customers == null || customers.isEmpty()) {
%>
    <h2>No customers fnd.</h2>
<%
    } else {
%>
<table style="width:100%">
  <tr>
    <th>Name</th>
    <th>Username</th>
    <th>Email</th>
    <th>Phone</th>
  </tr>
  <%
    for (Customer customer : customers) {
  %>
  <tr>
    <td><%= customer.getName() %></td>
    <td><%= customer.getUsername() %></td>
    <td><%= customer.getEmail() %></td>
    <%-- <td><%= customer.getPhone() %></td> --%>
  </tr>
  <%
    }
  %>
</table>
<%
    }
%>


</body>
<a href="#"><button style = "float: right;"><b>Delete</b></button></a>
<footer>
  <p style="position: fixed; bottom: 0; text-align: center;">&copy; 2025 IoTBay. All rights reserved.</p>
</footer>
</html>
