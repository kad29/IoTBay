<%@ page import="model.Payment" %>

<%
    Payment payment = (Payment) session.getAttribute("payment");
%>
<html>
<head>
    <title>View Payment</title>
    <style>
        table {
            border-collapse: collapse;
            width: 50%;
            margin: 20px auto;
        }
        th, td {
            border: 1px solid #333;
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #f4f4f4;
        }
    </style>
</head>
<body>
    <h2 style="text-align:center;">Payment Details</h2>
    <% if (payment != null) { %>
    <table>
        <tr><th>Field</th><th>Value</th></tr>
        <tr><td>Order ID</td><td><%= payment.getOrderId() %></td></tr>
        <tr><td>Method</td><td><%= payment.getMethod() %></td></tr>
        <tr><td>Card Number</td><td><%= payment.getCardNumber() %></td></tr>
        <tr><td>Expiry Date</td><td><%= payment.getExpiryDate() %></td></tr>
        <tr><td>CVV</td><td><%= payment.getCvv() %></td></tr>
        <tr><td>Amount</td><td>$<%= payment.getAmount() %></td></tr>
    </table>
    <% } else { %>
        <p style="text-align:center; color:red;">No payment details available.</p>
    <% } %>

    <nav>
    <a href="payment.jsp"><button><b>Back</b></button></a>
    </nav>
</body>
</html>
