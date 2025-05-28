package model;

public class Product {
    private String productId;
    private String name;
    private String type;
    private double price;
    private int quantity;
    
    public Product(String productId, String name, double price) {
        this.productId = productId;
        this.name = name;
        this.price = price;

    }

    public Product(String productId, String name, String type, Double price, int quantity) {
        this.productId = productId;
        this.name = name;
        this.type = type;
        this.price = price;
        this.quantity = quantity;

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

    public String getType() {
        return type;
    }

    public int getQuantity() {
        return quantity;
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