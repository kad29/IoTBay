package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * 
 * use to handle the request of user view their own access record
 */
@WebServlet("/LogsServlet")
public class LogsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // check if the user is logged in
        HttpSession session = request.getSession();
        if (session.getAttribute("user") == null) {
            response.sendRedirect("login.jsp");
            return;
        }
        
        try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/iotbay", "root", "")) {
            // query all the access record of the user, order by login time in descending order
            String sql = "SELECT * FROM access_log WHERE user_id = ? ORDER BY login_time DESC";
            List<AccessLog> logs = new ArrayList<>();
            
            try (PreparedStatement stmt = conn.prepareStatement(sql)) {
                // set the query parameter as the user id
                stmt.setInt(1, ((model.User)session.getAttribute("user")).getId());
                ResultSet rs = stmt.executeQuery();
                
                // iterate the result set, build the access log object list
                while (rs.next()) {
                    AccessLog log = new AccessLog();
                    log.setId(rs.getInt("id"));
                    log.setUserId(rs.getInt("user_id"));
                    log.setLoginTime(rs.getTimestamp("login_time"));
                    logs.add(log);
                }
            }
            
            // send the access log list to the log display page
            request.setAttribute("logs", logs);
            request.getRequestDispatcher("logs.jsp").forward(request, response);
        } catch (SQLException e) {
            // handle the database error
            e.printStackTrace();
            request.setAttribute("error", "Database error: " + e.getMessage());
            request.getRequestDispatcher("logs.jsp").forward(request, response);
        }
    }
    
    /**
     * 
     * use to store the information of single access record
     */
    private static class AccessLog {
        @SuppressWarnings("unused")
        private int id;          
        private int userId;      
        private Timestamp loginTime;  
        
        public void setId(int id) { this.id = id; }
        @SuppressWarnings("unused")
        public int getUserId() { return userId; }
        public void setUserId(int userId) { this.userId = userId; }
        @SuppressWarnings("unused")
        public Timestamp getLoginTime() { return loginTime; }
        public void setLoginTime(Timestamp loginTime) { this.loginTime = loginTime; }
    }
} 