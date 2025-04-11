<html>

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
  padding: 10px;
}

button{
  width: 150px;
  border: 2px;
  border-radius: 20px;
  padding: 15px;
font-size: 15px;
cursor: pointer;
}
button:active {
background-color: #ccc;
}
</style>

<body>

<h1>Welcome to IOTbay shop</h1>




<nav>
    <a href="register.jsp"><button><b>Register</b></button></a>
    <a href="login.jsp"><button><b>Login</b></button></a>
</nav>

<br></br>
<br></br>
<br></br>
<br></br>
<br></br>

<div style="display: flex; justify-content: space-around; flex-wrap: wrap;">
    <div style="text-align: center;">
        <img src="temp.jpg" alt="p1" style="width:100px">
        <h1>Product 1</h1>
        <p>$10.99</p>
        <p><button>View details</button></p>
    </div>
    <div style="text-align: center;">
        <img src="temp.jpg" alt="p2" style="width:100px">
        <h1>Product 2</h1>
        <p>$49.99</p>
        <p><button>View details</button></p>
    </div>
        <div style="text-align: center;">
        <img src="temp.jpg" alt="p3" style="width:100px">
        <h1>Product 3</h1>
        <p>$19.99</p>
        <p><button>View details</button></p>
    </div>
</div>

</body>
</html>

