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
      <form action="/action_page.php" class="form-container">
        <h1>Add Product</h1>

        <label for="name"><b>Product Name</b></label>
        <input type="text" placeholder="Enter Name" name="name" required>

        <label for="type"><b>Product Type</b></label>
        <input list="suggestions" id="type" name="type" type="text" placeholder="Enter Type">

        <datalist id="suggestions">
          <option value="Phone">
          <option value="Laptop">
          <option value="Camera">
          <option value="Tablet">
          <option value="Accessories">
        </datalist>

        <label for="price">Product Price</label>
        <div style="display: flex; align-items: center;">
          <span style="margin-right: 5px; font-size: large;">$</span>
          <input type="number" id="price" name="price" step="0.01" min="0" placeholder="0.00">
        </div>

        <label for="Quantity"><b>Product Quantity</b></label>
        <input type="number" placeholder="Enter Quantity" name="quantity" required>

        <button type="add" class="btn">Add</button>
        <button type="button" class="btn cancel" onclick="closeForm()">Close</button>
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