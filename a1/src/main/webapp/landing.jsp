<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="model.Cart" %>
<%@ page import="model.Product" %>
<%@ page import="model.Customer" %>

<html>
<head>
    <title>IOTBay Shop</title>
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

<%
    Cart cart = (Cart) session.getAttribute("cart");
    if (cart == null) {
        cart = new Cart();
        session.setAttribute("cart", cart);
    }
%>
<%
    // Retrieve the Customer object from the session
    Customer customer = (Customer) session.getAttribute("customer");
%>


<div style="position: fixed; top: 20px; right: 20px; background-color: #daeff5; padding: 10px; border-radius: 50%;">
    <a href="cart.jsp" style="text-decoration: none; color: inherit;">
        Items in cart: <%= cart.getItemCount() %>
    </a>
</div>

<nav>
    <% if (customer == null) { %>
        <a href="register.jsp"><button><b>Register</b></button></a>
        <a href="login.jsp"><button><b>Login</b></button></a>
    <% } %>
    <% if (customer != null) { %>
        <a href="main.jsp"><button><b>Home</b></button></a>
    <% } %>
        <a href="cart.jsp"><button><b>Cart</b></button></a>

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
        <form action="AddToCartServlet" method="POST">
            <input type="hidden" name="productId" value="1">
            <input type="hidden" name="name" value="Product 1">
            <input type="hidden" name="price" value="10.99">
            <button type="submit">Add to cart</button>
        </form>
    </div>
    <div style="text-align: center;">
        <img src="temp.jpg" alt="p2" style="width:100px">
        <h1>Product 2</h1>
        <p>$49.99</p>
        <form action="AddToCartServlet" method="POST">
            <input type="hidden" name="productId" value="2">
            <input type="hidden" name="name" value="Product 2">
            <input type="hidden" name="price" value="49.99">
            <button type="submit">Add to cart</button>
        </form>
    </div>
    <div style="text-align: center;">
        <img src="temp.jpg" alt="p3" style="width:100px">
        <h1>Product 3</h1>
        <p>$19.99</p>       
        <form action="AddToCartServlet" method="POST">
            <input type="hidden" name="productId" value="3">
            <input type="hidden" name="name" value="Product 3">
            <input type="hidden" name="price" value="19.99">
            <button type="submit">Add to cart</button>
        </form>
    </div>
</div>

</body>
</html>
