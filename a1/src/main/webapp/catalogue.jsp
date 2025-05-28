<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>

<html>
  <head>
    <link rel="stylesheet" href="css/catalogue.css">
  
    
  </head>
  <body>
    <div class="user">
        <a href="main.jsp" class="main"><b>Main Page</b></a>
      <text class="user_icon">&#128100;</text>
      <text>
        Staff
      </text>
    </div>

    <button class="add_product_button" onclick="openForm()">
      + Add Product
    </button>

    <div class="form-popup" id="myForm">
      <form action="/AddProductServlet" method="POST" class="form-container">
  Product ID: <input type="text" name="productID"><br>
  Name: <input type="text" name="name"><br>
  Type: <input type="text" name="type"><br>
  Price: <input type="number" step="0.01" name="price"><br>
  Quantity: <input type="number" name="quantity"><br>
  <input type="submit" value="Add Product">
</form>
    </div>

    <div class="title_div">
      <h1 class="title">
        Device Catalogue
      </h1>
    </div>
    <div class="search_div">
      <input type="text" placeholder="Search..." class="search_bar">
      <p class="search_icon">&#x1F50E;&#xFE0E;</p>

    </div>  
    <div class="outer_catalogue_div">
      <div class="catalogue_item_div">
        <img src="productImages/laptop.jpg">
        <p>Device Name: Surface Laptop 6</p>
        <P>Type: Laptop</P>
        <p>Unit Price: $1500</p>
        <P>Stock: 12</P>
      </div>
      <div class="catalogue_item_div">
        <img src="productImages/iphone16.jpg">
        <p>Device Name: iphone 16</p>
        <P>Type: Phone</P>
        <p>Unit Price: $1100</p>
        <P>Stock: 8</P>
      </div>
      <div class="catalogue_item_div">
        <img src="productImages/EOSR8.jpg">
        <p>Device Name: EOS R8</p>
        <P>Type: Camera</P>
        <p>Unit Price: $2600</p>
        <P>Stock: 4</P>
      </div>
      <div class="catalogue_item_div">
        <img src="productImages/applewatchseries8.jpg">
        <p>Device Name: Apple Watch Series 8</p>
        <P>Type: Watch</P>
        <p>Unit Price: $400</p>
        <P>Stock: 16</P>
      </div>
      <div class="catalogue_item_div">
        <img src="productImages/ipadmini6.jpg">
        <p>Device Name: IPad Mini 6</p>
        <P>Type: Tablet</P>
        <p>Unit Price: $400</p>
        <P>Stock: 13</P>
      </div>
    </div>

    <script>
      function openForm() {
        document.getElementById("myForm").style.display = "block";
      }

      function closeForm() {
        document.getElementById("myForm").style.display = "none";
      }
    </script>
  </body>
</html>