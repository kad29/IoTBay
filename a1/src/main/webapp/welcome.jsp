<%
    String name = request.getParameter("username");
    String email = request.getParameter("email");

    UserBean user = new UserBean();
    user.setName(name);
    user.setEmail(email);

    session.setAttribute("currentUser", user);
%>
<h2>Welcome, <%= user.getName() %>!</h2>
<a href="main.jsp">Go to Main Page</a>
