<%@ page session="true" %>
<%
    
    String username = request.getParameter("username");
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String password = request.getParameter("password");

    
    session.setAttribute("username", username);
    session.setAttribute("name", name);
    session.setAttribute("email", email);
    session.setAttribute("password", password);  
%>

<html>
  <head><title>Welcome Page</title></head>
  <body>
    <h2>Welcome, <%= name %>!</h2>
    <p>Your email: <%= email %></p>
    <p>Username: <%= username %></p>
    <p>(Password: <%= password %>)</p>
    <button href="main.jsp">Go to Main Page</button>
    <button href="logout.jsp">Logout</button>
  </body>
</html>
