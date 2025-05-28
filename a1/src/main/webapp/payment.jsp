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
  background: #ccc;
  padding: 10px;
}

.radio{
  width: 100px;
  border: 2px;
  border-radius: 20px;
  padding: 15px;
  font-size: 15px;
}

.Search {
  width: 500px;
  height: 40px;
  border: 2px solid #ccc;
  border-radius: 20px;
  font-size: 15px;
  font-family: Arial, Helvetica, sans-serif;
  padding: 12px 20px;
  margin: 8px 0;
}
</style>
    <!-- header -->
    <body>
    <header> Create Payment Details </header> 
    
    <!-- forms for credit and debit card payment -->
    

    <form action = "AddPaymentServlet" method = "post">
      Order ID: <input type="number" name="orderId" required><br>
      Payment Method: 
      <select name="method">
        <option value="Credit Card">Credit Card</option>
        <option value="Debit Card">Debit Card</option>
      </select><br>
      Card Number: <input type="text" name="cardNumber" placeholder="**** **** **** ****"><br>
      Expiry Date: <input type="date" name="expiryDate" required><br>
      CVV: <input type="text" name="cvv" placeholder="***" required><br>
      Amount: <input type="number" name="amount" required><br>
    <input type="submit" value ="Save Payment">

    </form>

    

    <nav>
    <a href="cart.jsp"><button><b>Back</b></button></a>
    </nav>

    <nav>
    <a href="viewPayments"><button><b>Payment History</b></button></a>
    </nav>
    </body>
    




</html
