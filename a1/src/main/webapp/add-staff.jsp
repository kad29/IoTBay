<html>
<body>

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
</style>

    <header>Add Staff</header>
    <form action="staff" method="post">
        <input type="hidden" name="action" value="add">
        Email: <input type="text" name="email"><br>
        First Name: <input type="text" name="firstName"><br>
        Last Name: <input type="text" name="lastName"><br>
        Position: <input type="text" name="position"><br>
        Address: <input type="text" name="address"><br>
        <input type="submit" value="Register">
    </form>
    <a href="staff-list.jsp">Back to List</a>
</body>
</html>