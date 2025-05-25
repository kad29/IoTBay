package controller;

import model.User;

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
 * use to handle the request of user cancel account, including delete user data and access record
 */
@WebServlet("/CancelServlet")
public class CancelServlet extends HttpServlet {
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
        
        try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/iotbay", "root", "")) {
            // delete all the access record of the user
            String deleteLogsSql = "DELETE FROM access_log WHERE user_id = ?";
            try (PreparedStatement logStmt = conn.prepareStatement(deleteLogsSql)) {
                logStmt.setInt(1, user.getId());
                logStmt.executeUpdate();
            }
            
            // delete the user account
            String deleteUserSql = "DELETE FROM users WHERE id = ?";
            try (PreparedStatement userStmt = conn.prepareStatement(deleteUserSql)) {
                userStmt.setInt(1, user.getId());
                int result = userStmt.executeUpdate();
                
                if (result > 0) {
                    // account deleted successfully, clear the session and redirect to login page
                    session.invalidate();
                    response.sendRedirect("login.jsp?message=Account cancelled successfully");
                } else {
                    // account deleted failed, show error message
                    request.setAttribute("error", "Failed to cancel account.");
                    request.getRequestDispatcher("cancel.jsp").forward(request, response);
                }
            }
        } catch (SQLException e) {

            e.printStackTrace();
            request.setAttribute("error", "Database error: " + e.getMessage());
            request.getRequestDispatcher("cancel.jsp").forward(request, response);
        }
    }
} 