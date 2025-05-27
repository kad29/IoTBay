package model;

import java.sql.Timestamp;


public class User {
    private int id;              
    private String username;     
    private String fullName;     
    private String email;        
    private String password;     
    private String phone;       
    private String role;        
    private Timestamp createdAt; 
    private Timestamp updatedAt; 


    public User() {}

    /**
     * 
     * @param id 
     * @param username 
     * @param fullName 
     * @param email 
     * @param password 
     * @param phone 
     * @param role 
     * @param createdAt 
     * @param updatedAt 
     */
    public User(int id, String username, String fullName, String email, String password, String phone, String role, Timestamp createdAt, Timestamp updatedAt) {
        this.id = id;
        this.username = username;
        this.fullName = fullName;
        this.email = email;
        this.password = password;
        this.phone = phone;
        this.role = role;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
    }

    public int getId() { return id; }
    public void setId(int id) { this.id = id; }
    public String getUsername() { return username; }
    public void setUsername(String username) { this.username = username; }
    public String getFullName() { return fullName; }
    public void setFullName(String fullName) { this.fullName = fullName; }
    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }
    public String getPassword() { return password; }
    public void setPassword(String password) { this.password = password; }
    public String getPhone() { return phone; }
    public void setPhone(String phone) { this.phone = phone; }
    public String getRole() { return role; }
    public void setRole(String role) { this.role = role; }
    public Timestamp getCreatedAt() { return createdAt; }
    public void setCreatedAt(Timestamp createdAt) { this.createdAt = createdAt; }
    public Timestamp getUpdatedAt() { return updatedAt; }
    public void setUpdatedAt(Timestamp updatedAt) { this.updatedAt = updatedAt; }
} 