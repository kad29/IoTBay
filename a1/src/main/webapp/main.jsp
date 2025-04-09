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


<header>
<!-- Logo of the page link back to home page -->
<a href="#home" class="Logo">
  <img src= "temp.jpg" alt = "Logo" style = "width:150px;">
</a>
  <h1 style= "text-align: center;">Main Page </h1>
  
<!-- Link to logout page -->
<a href="#logout" class="LogOut"><b>Log out</b></a>

</header>

<!-- Navigation -->
<nav>
    <button href="#"><b>About</b></button>
    <button href="#"><b>Product</b></button>
    <button href="#"><b>Landing Page</b></button>
    <button href="#"><b>Account</b></button>
  </nav>

</body>
</html>
