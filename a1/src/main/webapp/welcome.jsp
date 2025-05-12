<%@page import="model.Customer"%>
<html>
  <head>
    <title>Welcome Page</title>
  </head>
  <body>
    <%
      // Retrieve the submitted parameters
      String username = request.getParameter("username");
      String name = request.getParameter("name");
      String email = request.getParameter("email");
      String password = request.getParameter("password");

      // Create a Customer JavaBean instance
      Customer customer = new Customer(name, username, email, password);
      // Store the customer information in session attributes
      session.setAttribute("customer", customer);
    %>

    <h2>Welcome, <%= customer.getName() %>!</h2>
    <p>Your email: <%= customer.getEmail() %></p>
    <p>Username: <%= customer.getUsername() %></p>
    <%-- Consider removing the password display in a real application for security reasons --%>
    <p>(Password: <%= customer.getPassword() %>)</p>
    <a href="main.jsp"><button><b>Main Page</b></button></a>
    <a href="customerinfo.jsp"><button><b>Customer</b></button></a>
    <a href="logout.jsp"><button><b>Log Out</b></button></a>
  </body>
</html>