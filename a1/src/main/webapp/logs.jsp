<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Access Logs</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <div class="container">
        <h1>Access Logs</h1>
        
        <% if (request.getAttribute("error") != null) { %>
            <div class="error">${error}</div>
        <% } %>
        
        <div class="logs-list">
            <table>
                <thead>
                    <tr>
                        <th>Login Time</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${logs}" var="log">
                        <tr>
                            <td>
                                <fmt:formatDate value="${log.loginTime}" pattern="yyyy-MM-dd HH:mm:ss"/>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        
        <div class="links">
            <a href="main.jsp">Back to Main</a>
        </div>
    </div>
</body>
</html> 