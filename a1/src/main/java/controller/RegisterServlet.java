package controller;

import model.User;
import model.dao.UserDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * 
 * use to handle the request of user register, including verify the user information and create new account
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // to get the user's register information
        String username = request.getParameter("username");
        String fullName = request.getParameter("fullname");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String phone = request.getParameter("phone");
        // set the user role, default as customer
        String role = request.getParameter("role") != null ? request.getParameter("role") : "customer";

        try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/iotbay", "root", "")) {
            UserDAO userDAO = new UserDAO(conn);
            // check if the username is already registered
            if (userDAO.findByUsername(username) != null) {
                request.setAttribute("error", "Username already taken.");
                request.getRequestDispatcher("register.jsp").forward(request, response);
                return;
            }
            // check if the email is already registered
            if (userDAO.findByEmail(email) != null) {
                request.setAttribute("error", "Email already registered.");
                request.getRequestDispatcher("register.jsp").forward(request, response);
                return;
            }
            // create new user object
            User user = new User(0, username, fullName, email, password, phone, role, null, null);
            // try to register new user
            boolean success = userDAO.registerUser(user);
            if (success) {
                // register successfully, redirect to login page
                response.sendRedirect("login.jsp");
            } else {
                // register failed, show error message
                request.setAttribute("error", "Registration failed. Please try again.");
                request.getRequestDispatcher("register.jsp").forward(request, response);
            }
        } catch (SQLException e) {
            // handle the database error
            e.printStackTrace();
            request.setAttribute("error", "Database error: " + e.getMessage());
            request.getRequestDispatcher("register.jsp").forward(request, response);
        }
    }
} 