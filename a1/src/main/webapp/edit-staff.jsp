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

    <header>Edit Staff</header>
    <form action="staff" method="post">
        <input type="hidden" name="action" value="update">
        <input type="hidden" name="staffId" value="${staff.staffId}">
        Email: <input type="text" name="email" value="${staff.email}"><br>
        First Name: <input type="text" name="firstName" value="${staff.firstName}"><br>
        Last Name: <input type="text" name="lastName" value="${staff.lastName}"><br>
        Position: <input type="text" name="position" value="${staff.position}"><br>
        Status: 
        <input type="radio" name="status" value="Active" ${staff.status == 'Active' ? 'checked' : ''}> Active
        <input type="radio" name="status" value="Inactive" ${staff.status == 'Inactive' ? 'checked' : ''}> Inactive<br>
        <input type="submit" value="Update">
    </form>
    <a href="staff-list.jsp">Back to List</a>
</body>
</html>
