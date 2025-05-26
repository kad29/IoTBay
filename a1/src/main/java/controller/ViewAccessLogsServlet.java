package controller;

import model.AccessLog;
import model.AccessLogDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * 
 * use to handle the request of user view the access record of all users
 */
@WebServlet("/view-access-logs")
public class ViewAccessLogsServlet extends HttpServlet {
    private AccessLogDAO accessLogDAO;

    @Override
    public void init() throws ServletException {
        // initialize the access log data access object
        accessLogDAO = new AccessLogDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // to get the username from the query parameter
        String username = request.getParameter("username");
        List<AccessLog> logs;
        
        // check if the username is provided
        if (username != null && !username.isEmpty()) {
            // query the access record of the specific user
            logs = accessLogDAO.getLogsByUsername(username);
        } else {
            // query the access record of all users
            logs = accessLogDAO.getAllLogs();
        }
        
        // send the query result to the access log display page
        request.setAttribute("logs", logs);
        request.getRequestDispatcher("access-logs.jsp").forward(request, response);
    }
} 