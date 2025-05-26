<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <title>Access Logs</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-color: #f5f5f5;
        }
        .container {
            max-width: 1200px;
            margin: 0 auto;
            background-color: white;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }
        h1 {
            color: #333;
            margin-bottom: 20px;
        }
        .search-form {
            margin-bottom: 20px;
        }
        .search-form input[type="text"] {
            padding: 8px;
            width: 200px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        .search-form button {
            padding: 8px 16px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .search-form button:hover {
            background-color: #45a049;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #f8f8f8;
            font-weight: bold;
        }
        tr:hover {
            background-color: #f5f5f5;
        }
        .pagination {
            margin-top: 20px;
            text-align: center;
        }
        .pagination a {
            color: black;
            padding: 8px 16px;
            text-decoration: none;
            transition: background-color .3s;
            border: 1px solid #ddd;
            margin: 0 4px;
        }
        .pagination a.active {
            background-color: #4CAF50;
            color: white;
            border: 1px solid #4CAF50;
        }
        .pagination a:hover:not(.active) {
            background-color: #ddd;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Access Logs</h1>
        
        <form class="search-form" action="view-access-logs" method="get">
            <input type="text" name="username" placeholder="Search by username" value="${param.username}">
            <button type="submit">Search</button>
        </form>

        <table>
            <thead>
                <tr>
                    <th>Username</th>
                    <th>IP Address</th>
                    <th>Page URL</th>
                    <th>Access Time</th>
                    <th>User Agent</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${logs}" var="log">
                    <tr>
                        <td>${log.username}</td>
                        <td>${log.ipAddress}</td>
                        <td>${log.pageUrl}</td>
                        <td><fmt:formatDate value="${log.accessTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                        <td>${log.userAgent}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <div class="pagination">
            <c:if test="${currentPage > 1}">
                <a href="?page=${currentPage-1}&username=${param.username}">&laquo;</a>
            </c:if>
            
            <c:forEach begin="1" end="${totalPages}" var="i">
                <a href="?page=${i}&username=${param.username}" 
                   class="${currentPage == i ? 'active' : ''}">${i}</a>
            </c:forEach>
            
            <c:if test="${currentPage < totalPages}">
                <a href="?page=${currentPage+1}&username=${param.username}">&raquo;</a>
            </c:if>
        </div>
    </div>
</body>
</html> 