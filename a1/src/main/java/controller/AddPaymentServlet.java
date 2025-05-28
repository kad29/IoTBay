package controller;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import model.Payment;

import java.io.IOException;

@WebServlet("/AddPaymentServlet")
public class AddPaymentServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Get form parameters
        int orderId = Integer.parseInt(request.getParameter("orderId"));
        String method = request.getParameter("method");
        String cardNumber = request.getParameter("cardNumber"); 
        String expiryDate = request.getParameter("expiryDate");
        String cvv = request.getParameter("cvv");
        double amount = Double.parseDouble(request.getParameter("amount"));

        // Create Payment object
        Payment payment = new Payment();
        payment.setOrderId(orderId);
        payment.setMethod(method);
        payment.setCardNumber(cardNumber);
        payment.setExpiryDate(expiryDate);
        payment.setCvv(cvv);
        payment.setAmount(amount);

       
        request.setAttribute("payment", payment);

        // Forward to JSP view
        RequestDispatcher dispatcher = request.getRequestDispatcher("viewPayment.jsp");
        dispatcher.forward(request, response);
    }
}
