<!DOCTYPE html>
<%@page import="model.Manager"%>

<html>
<%
    // Retrieve the Manager object from the session
    Manager manager = (Manager) session.getAttribute("manager");
    // Check if the manager object exists in the session
    if (manager == null) {
        // If not, redirect the user to the login page
        response.sendRedirect("login.jsp");
        return; // Stop further processing of this page
    }
%>

<% else if (manager.getUsername() == 'jp123' && manager.getPassword() == '1234') { %>
  <title>Manager Account</title>
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
    width: 150px;
    padding: 10px;

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
    <a href="manageracc.jsp" class="Logo">
      <img src= "temp.jpg" alt = "Logo" style = "width:150px;">
    </a>
      <h1 style= "text-align: center;">Hi, <%--<%= manager.getName() %>--%></h1>
      
    <!-- Link to logout page -->
    <a href="logout.jsp" class="LogOut"><button><b>Log out</b></button></a>
      <h1 style= "text-align: center;">Manager Account</h1>

    </header>

    <!-- Navigation -->
  <nav>
      <a href="#"><button><b>Product Catalouge</b></button></a>
      <a href="customerinfo.jsp"><button><b>Customer Information</b></button></a>
      <a href="add-staff.jsp"><button><b>Staff Information Management</b></button></a>
      <a href="manageracc.jsp"><button><b>Account</b></button></a>
  </nav>
  </body>

  <% } %>
</html>
