package model;
/**
 * User class representing a user in the system.
 * This class contains user-related information such as email, name, and password.
 */

public class User{
    
    private String email;
    private String name;
    private String password;
    
    public User(String email, String name, String password) {
        this.email = email;
        this.name = name;
        this.password = password;
    }
    
    // Standard getters and setters
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
}
