<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="model.Cart"%>
<%@ page import="model.Product"%>
<%@ page import="java.util.List"%>
<%@ page session="true"%>
<html>
<head>
    <title>Shopping Cart</title>
    <style>
        * {
            box-sizing: border-box;
        }
        body {
            font-family: Arial, Helvetica, sans-serif;
            padding: 20px;
        }
        .cart-item {
            border: 1px solid #ddd;
            margin: 10px 0;
            padding: 15px;
            border-radius: 8px;
        }
        .cart-total {
            font-size: 1.2em;
            font-weight: bold;
            margin-top: 20px;
            text-align: right;
        }
        .continue-shopping {
            display: inline-block;
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            margin-top: 20px;
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
</head>
<body>
    <h1>Your Shopping Cart</h1>
    
    <%
        Cart cart = (Cart) session.getAttribute("cart");
        if (cart == null) {
            cart = new Cart();
            session.setAttribute("cart", cart);
        }
        
        List<Product> items = cart.getItems();
        if (items.isEmpty()) {
    %>
        <p>Your cart is empty.</p>
    <%
        } else {
            for (Product item : items) {
    %>
            <div class="cart-item">
                <h3><%= item.getName() %></h3>
                <p>Price: $<%= String.format("%.2f", item.getPrice()) %></p>
                <form action="RemoveFromCartServlet" method="POST">
                    <input type="hidden" name="productId" value="<%= item.getProductId() %>">
                    <button type="submit" style="background-color: #ff4444; color: white;">Remove Item</button>
                </form>
            </div>
    <%
            }
    %>
        <div class="cart-total">
            Total: $<%= String.format("%.2f", cart.getTotal()) %>
        </div>
    <%
        }
    %>
    <div style="display: flex; justify-content: space-between; align-items: center; margin-top: 20px;">
        <form action="landing.jsp" method="post" style="margin: 0;">
            <button type="submit" style="width: 200px;">Continue Shopping</button>
        </form>        
        <form action="payment.jsp" method="post" style="margin: 0;">
            <button type="submit">Checkout</button>
        </form>
    </div>
  
</body>
</html>
