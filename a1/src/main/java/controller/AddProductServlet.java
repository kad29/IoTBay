package controller;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Product;
import java.io.PrintWriter;

@WebServlet("/AddProductServlet")
public class AddProductServlet extends HttpServlet {

    private ProductDAO productDAO;

    @Override
    public void init() throws ServletException {
        productDAO = new ProductDAO(); // Initialize DAO
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Set character encoding for POST data
        request.setCharacterEncoding("UTF-8");

        // Get product details from the form
        String productID = request.getParameter("productID");
        String name = request.getParameter("name");
        String type = request.getParameter("type");
        double price = Double.parseDouble(request.getParameter("price"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));

        // Create product and add it to DB
        Product product = new Product(productID, name, type, price, quantity);
        productDAO.addProduct(product);

        // Send response (or redirect)
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<h2>Product added successfully!</h2>");
    }
}