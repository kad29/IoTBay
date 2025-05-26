package model;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;


public class AccessLogDAO {
    private Connection connection;


    public AccessLogDAO() {
        try {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            connection = DriverManager.getConnection("jdbc:derby://localhost:1527/IoTBay", "iotbay", "iotbay");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * 
     * @param log 
     */
    public void addLog(AccessLog log) {
        String sql = "INSERT INTO access_logs (username, ip_address, page_url, access_time, user_agent) VALUES (?, ?, ?, ?, ?)";
        try (PreparedStatement stmt = connection.prepareStatement(sql)) {
            stmt.setString(1, log.getUsername());
            stmt.setString(2, log.getIpAddress());
            stmt.setString(3, log.getPageUrl());
            stmt.setTimestamp(4, new Timestamp(log.getAccessTime().getTime()));
            stmt.setString(5, log.getUserAgent());
            stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    /**
     * 
     * @param username 
     * @return 
     */
    public List<AccessLog> getLogsByUsername(String username) {
        List<AccessLog> logs = new ArrayList<>();
        String sql = "SELECT * FROM access_logs WHERE username = ? ORDER BY access_time DESC";
        try (PreparedStatement stmt = connection.prepareStatement(sql)) {
            stmt.setString(1, username);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                AccessLog log = new AccessLog();
                log.setId(rs.getInt("id"));
                log.setUsername(rs.getString("username"));
                log.setIpAddress(rs.getString("ip_address"));
                log.setPageUrl(rs.getString("page_url"));
                log.setAccessTime(rs.getTimestamp("access_time"));
                log.setUserAgent(rs.getString("user_agent"));
                logs.add(log);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return logs;
    }

    /**
     * 
     * @return 
     */
    public List<AccessLog> getAllLogs() {
        List<AccessLog> logs = new ArrayList<>();
        String sql = "SELECT * FROM access_logs ORDER BY access_time DESC";
        try (Statement stmt = connection.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {
            while (rs.next()) {
                AccessLog log = new AccessLog();
                log.setId(rs.getInt("id"));
                log.setUsername(rs.getString("username"));
                log.setIpAddress(rs.getString("ip_address"));
                log.setPageUrl(rs.getString("page_url"));
                log.setAccessTime(rs.getTimestamp("access_time"));
                log.setUserAgent(rs.getString("user_agent"));
                logs.add(log);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return logs;
    }
} 