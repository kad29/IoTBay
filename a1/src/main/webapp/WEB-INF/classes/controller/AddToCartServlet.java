package controller;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Cart;
import model.Product;

@WebServlet("/AddToCartServlet")
public class AddToCartServlet extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        
        // Get the cart from session or create a new one if it doesn't exist
        Cart cart = (Cart) session.getAttribute("cart");
        if (cart == null) {
            cart = new Cart();
            session.setAttribute("cart", cart);
        }
        
        // Get product details from the request
        String productId = request.getParameter("productId");
        String name = request.getParameter("name");
        double price = Double.parseDouble(request.getParameter("price"));
        
        // Create a new product and add it to cart
        Product product = new Product(productId, name, price);
        cart.addProduct(product);
        
        // Redirect back to landing page
        response.sendRedirect("landing.jsp");
    }
}
