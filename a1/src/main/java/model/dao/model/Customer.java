package model;
public class Customer {
        
    private String email;
    private String username;
    private String name;
    private String password;
    private int phone;

    public Customer(String name, String username, String email, int phone, String password) {
        this.name = name;
        this.username = username;
        this.email = email;
        this.phone = phone;
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

    public String getUsername() {
        return username;
    }
    public void setUsername(String username) {
        this.username = username;
    }
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getPhone() {
        return phone;
    }
    public void setPhone(int phone) {
        this.phone = phone;
    }
    
}