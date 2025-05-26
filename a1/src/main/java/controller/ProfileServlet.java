package controller;

import model.User;
import model.dao.UserDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.*;

/**
 * 
 * use to handle the request of user view and update their own profile
 */
@WebServlet("/ProfileServlet")
public class ProfileServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // to get current session and user information
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        
        // check if the user is logged in
        if (user == null) {
            response.sendRedirect("login.jsp");
            return;
        }
        
        // send the user information to the profile page
        request.setAttribute("user", user);
        request.getRequestDispatcher("profile.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // to get current session and user information
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        
        // check if the user is logged in
        if (user == null) {
            response.sendRedirect("login.jsp");
            return;
        }
        
        // to get the user's update information
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        
        try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/iotbay", "root", "")) {
            UserDAO userDAO = new UserDAO(conn);
            // update the user object information
            user.setFullName(name);
            user.setEmail(email);
            user.setPhone(phone);
            
            // try to update the user information in the database
            if (userDAO.updateUser(user)) {
                // update successfully, update the user information in the session and show success message
                session.setAttribute("user", user);
                request.setAttribute("message", "Profile updated successfully!");
            } else {
                // update failed, show error message
                request.setAttribute("error", "Failed to update profile.");
            }
            
            // return the profile page
            request.getRequestDispatcher("profile.jsp").forward(request, response);
        } catch (SQLException e) {
            // handle the database error
            e.printStackTrace();
            request.setAttribute("error", "Database error: " + e.getMessage());
            request.getRequestDispatcher("profile.jsp").forward(request, response);
        }
    }
} 