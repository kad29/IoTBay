package model;

public class Product {
    private String productId;
    private String name;
    private double price;
    
    public Product(String productId, String name, double price) {
        this.productId = productId;
        this.name = name;
        this.price = price;
    }
    
    // Getters and setters
    public String getProductId() {
        return productId;
    }
    
    public String getName() {
        return name;
    }
    
    public double getPrice() {
        return price;
    }
    
    @Override
    public boolean equals(Object obj) {
        if (obj instanceof Product) {
            Product other = (Product) obj;
            return this.productId.equals(other.productId);
        }
        return false;
    }
    
    @Override
    public int hashCode() {
        return productId.hashCode();
    }
}