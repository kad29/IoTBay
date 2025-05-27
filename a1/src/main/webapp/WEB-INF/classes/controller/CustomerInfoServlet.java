package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
import model.Customer;
import model.dao.DBConnector;
import model.dao.DBManager;

@WebServlet("/customerinfo")
public class CustomerInfoServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            DBConnector connector = new DBConnector();
            Connection conn = connector.openConnection();
            DBManager manager = new DBManager(conn);

            List<Customer> customers = manager.fetchAllCustomers();
            request.setAttribute("customers", customers);

            connector.closeConnection();
        } catch (ClassNotFoundException | SQLException e) {
            throw new ServletException(e);
        }
        request.getRequestDispatcher("customerinfo.jsp").forward(request, response);
    }
}
