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
import java.time.LocalDateTime;

/**
 * 
 * use to handle the request of user login, including verify the user credentials and create session
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // to get the user's login information
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/iotbay", "root", "")) {
            // create user data access object and verify the login
            UserDAO userDAO = new UserDAO(conn);
            User user = userDAO.login(username, password);
            if (user != null) {
                // login successfully, record the login time
                String logSql = "INSERT INTO access_log (user_id, login_time) VALUES (?, ?)";
                try (PreparedStatement logStmt = conn.prepareStatement(logSql)) {
                    logStmt.setInt(1, user.getId());
                    logStmt.setTimestamp(2, Timestamp.valueOf(LocalDateTime.now()));
                    logStmt.executeUpdate();
                }
                
                // create user session and store user information
                HttpSession session = request.getSession();
                session.setAttribute("user", user);
                // after login successfully, redirect to main page
                response.sendRedirect("main.jsp"); 
            } else {
                // login failed, show error message
                request.setAttribute("error", "Invalid username or password.");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("error", "Database error: " + e.getMessage());
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
} 