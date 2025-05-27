package model.dao;

import model.User;
import java.sql.*;

/**
 * 
 * use to handle the database operation of user, including register, login, query and update user information
 */
public class UserDAO {
    private Connection conn;

    /**
     * 
     * @param conn 
     */
    public UserDAO(Connection conn) {
        this.conn = conn;
    }

    /**
     * 
     * @param user 
     * @return 
     * @throws SQLException 
     */
    public boolean registerUser(User user) throws SQLException {
        String sql = "INSERT INTO users (username, full_name, email, password, phone, role) VALUES (?, ?, ?, ?, ?, ?)";
        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, user.getUsername());
            stmt.setString(2, user.getFullName());
            stmt.setString(3, user.getEmail());
            stmt.setString(4, user.getPassword());
            stmt.setString(5, user.getPhone());
            stmt.setString(6, user.getRole());
            return stmt.executeUpdate() > 0;
        }
    }

    /**
     * 
     * @param username 
     * @return 
     * @throws SQLException 
     */
    public User findByUsername(String username) throws SQLException {
        String sql = "SELECT * FROM users WHERE username = ?";
        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, username);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    return extractUser(rs);
                }
            }
        }
        return null;
    }

    /**
     * 
     * @param email 
     * @return 
     * @throws SQLException 
     */
    public User findByEmail(String email) throws SQLException {
        String sql = "SELECT * FROM users WHERE email = ?";
        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, email);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    return extractUser(rs);
                }
            }
        }
        return null;
    }

    /**
     * 
     * @param username 
     * @param password 
     * @return 
     * @throws SQLException 
     */
    public User login(String username, String password) throws SQLException {
        String sql = "SELECT * FROM users WHERE username = ? AND password = ?";
        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, username);
            stmt.setString(2, password);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    return extractUser(rs);
                }
            }
        }
        return null;
    }

    /**
     * 
     * @param rs 
     * @return 
     * @throws SQLException 
     */
    private User extractUser(ResultSet rs) throws SQLException {
        return new User(
            rs.getInt("id"),
            rs.getString("username"),
            rs.getString("full_name"),
            rs.getString("email"),
            rs.getString("password"),
            rs.getString("phone"),
            rs.getString("role"),
            rs.getTimestamp("created_at"),
            rs.getTimestamp("updated_at")
        );
    }

    /**
     * 
     * @param user 
     * @return 
     * @throws SQLException 
     */
    public boolean updateUser(User user) throws SQLException {
        String sql = "UPDATE users SET username = ?, full_name = ?, email = ?, phone = ? WHERE id = ?";
        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, user.getUsername());
            stmt.setString(2, user.getFullName());
            stmt.setString(3, user.getEmail());
            stmt.setString(4, user.getPhone());
            stmt.setInt(5, user.getId());
            return stmt.executeUpdate() > 0;
        }
    }
} 