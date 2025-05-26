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
import java.time.LocalDateTime;

/**
 * 
 * use to handle the request of user logout, including record the logout time and clear the session
 */
@WebServlet("/LogoutServlet")
public class LogoutServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // to get current session
        HttpSession session = request.getSession(false);
        if (session != null) {
            // to get current login user information
            User user = (User) session.getAttribute("user");
            if (user != null) {
                // update the logout time of the last access record of the user
                try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/iotbay", "root", "")) {
                    String updateLogSql = "UPDATE access_log SET logout_time = ? WHERE user_id = ? AND logout_time IS NULL ORDER BY login_time DESC LIMIT 1";
                    try (PreparedStatement stmt = conn.prepareStatement(updateLogSql)) {
                        stmt.setTimestamp(1, Timestamp.valueOf(LocalDateTime.now()));
                        stmt.setInt(2, user.getId());
                        stmt.executeUpdate();
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            session.invalidate();
        }
        response.sendRedirect("login.jsp");
    }
} 