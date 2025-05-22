<!DOCTYPE html>

<html>
  <head>
    <link rel="stylesheet" href="catalogue.css">
    <style>
      body{
        background-color: gray;
        margin: 0;
      }

      p{
        font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
      }

      .main{
        font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
        border-bottom: 10px;
      }

      .title_div{
        text-align: center;
      }

      .title{
        font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
      }

      .user_icon{
        padding-bottom: none;
      }

      .user{
        position: absolute;
        left: 30px;
        font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
        font-weight: lighter;
        text-align: center;
        font-size: x-large;
        max-width: 100px;
      }

      .add_product_button{
        position: absolute;
        right: 20px;
        top: 30px;
        height: 60px;
        border-radius: 20px;
        border: none;
        width: 200px;
        font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
        font-size: larger;
      }

      .add_product_button:hover{
        background-color: rgb(212, 212, 212);
        }

      .search_div{
        text-align: center;
        position: relative;
        padding-bottom:20px ;
      }

      .search_bar{
      border-radius: 30px;
      width: 500px;
      height: 50px;
      border: none;
      padding-left: 20px;
      }

      .search_icon{
        position: absolute;
        top: 0px;
        left: 1165px;
      }

      .outer_catalogue_div{
        background-color: rgb(75, 74, 74);
        padding: 50px;
        height: 100%;
        display: grid;
        grid-template-columns: 1fr 1fr 1fr 1fr 1fr;
      }

      .catalogue_item_div{
        width: 80%;
        outline: black;
        text-align: center;
        background-color: grey;
        height: 300px;
        border-radius: 20px;
      }


      .hi{
        background-color: white;
      }

      img{
        padding-top: 10px;
        max-width: 200px;
        max-height: 100px;
      }
    </style>
  </head>
  <body>
    <div class="user">
        <a href="main.jsp" class="main"><b>Main Page</b></a>
      <text class="user_icon">&#128100;</text>
      <text>
        Staff
      </text>
    </div>

    <button class="add_product_button">
      + Add Product
    </button>
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
  </body>
</html>