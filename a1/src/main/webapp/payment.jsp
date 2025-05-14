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
  padding: 12px 20p;x;
  margin: 8px 0;
}
</style>
    <!-- header -->
    <body>
    <header> Choose payment method </header> 
    

    <!-- Script to show credit or debit form based on radio button selection -->
    <script>
        function showform(method){
            document.getElementById("creditCard").style.display = (method == 'credit') ? 'block' : 'none';
            document.getElementById("debitCard").style.display = (method == 'debit') ? 'block' : 'none';
        }
    </script>

    <!-- radio buttons to select payment method -->
    <form>
        <input type = "radio" name = "paymentType" value = "credit" onclick = "showform('credit')"> Credit Card<br>
        <input type = "radio" name = "paymentType" value = "debit" onclick = "showform('debit')"> Debit Card<br>
    </form>
    
    <!-- forms for credit and debit card payment -->
    <div id = "creditCard" style = "display:none;">
        <h2> Credit card method </h2>

        <form action = "payment" method = "post">
            <label for="ccnum">Credit Card Number:</label><br>
            <input type="text" id="ccnum" name="ccnum"><br>
            <label for="expdate">Expiry Date:</label><br>
            <input type="text" id="expdate" name="expdate"><br>
            <label for="cvv">CVV:</label><br>
            <input type="text" id="cvv" name="cvv"><br><br>
            <input type = "checkbox"> Remember Card Details<br><br>
            <input type="submit" value="Purchase">

        </form>

    </div>

    <div id = "debitCard" style = "display:none;">
        <h2> Debit card method </h2>

        <form action = "payment" method = "post">
            <label for="ccnum">Debit Card Number:</label><br>
            <input type="text" id="ccnum" name="ccnum"><br>
            <label for="expdate">Expiry Date:</label><br>
            <input type="text" id="expdate" name="expdate"><br>
            <label for="cvv">CVV:</label><br>
            <input type="text" id="cvv" name="cvv"><br><br>
            <input type = "checkbox"> Remember Card Details<br><br>
            <input type="submit" value="Purchase">

        </form>
    </div>
    </body>
    




</html
