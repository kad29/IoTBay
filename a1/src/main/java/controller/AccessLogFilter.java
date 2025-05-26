package controller;

import model.AccessLog;
import model.AccessLogDAO;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.Date;

/**
 * 
 * use to record all the user's access to the website
 */
public class AccessLogFilter implements Filter {
    private AccessLogDAO accessLogDAO;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        // nitialize the access of log data access object
        accessLogDAO = new AccessLogDAO();
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        
        // to get current session information
        HttpSession session = httpRequest.getSession();
        // to get the username, if not login will show as anonymous
        String username = (String) session.getAttribute("username");
        if (username == null) {
            username = "anonymous";
        }

        // create new access log record
        AccessLog log = new AccessLog(
            username,
            request.getRemoteAddr(),
            httpRequest.getRequestURI(),
            new Date(),
            httpRequest.getHeader("User-Agent")
        );


        accessLogDAO.addLog(log);


        chain.doFilter(request, response);
    }

    @Override
    public void destroy() {

    }
} 