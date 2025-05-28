package controller;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Customer;
//import model.CustomerInfo;

public class AddCustomer {
/* 
@WebServlet("/AddCustomerServlet")
public class AddCustomerServlet extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        
        // Get customer info from session or create a new one if it doesn't exist
        Customerinfo customerInfo = (Customerinfo) session.getAttribute("customerInfo");
        if (customerInfo == null) {
            customerInfo = new Customerinfo();
            session.setAttribute("customerInfo", customerInfo);
        }
        
        // Get customer details from the request
        String name = request.getParameter("name");
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String password = request.getParameter("password");
        
        // Create a new customer and add it to customer info
        Customer customer = new Customer(name, username, email, phone, password);
        customerInfo.addCustomer(customer);
        
        response.sendRedirect("customerinfo.jsp");
    }
}
*/

}
