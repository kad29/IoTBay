package model;

import java.util.ArrayList;
import java.util.List;

public class Cart {
    private List<Product> items;
    
    public Cart() {
        this.items = new ArrayList<>();
    }
    
    public void addProduct(Product product) {
        items.add(product);
    }
      public void removeProduct(String productId) {
        for (int i = 0; i < items.size(); i++) {
            if (String.valueOf(items.get(i).getProductId()).equals(productId)) {
                items.remove(i);
                break;  // Only remove the first matching product
            }
        }
    }
    
    public List<Product> getItems() {
        return items;
    }
    
    public double getTotal() {
        return items.stream()
                   .mapToDouble(Product::getPrice)
                   .sum();
    }
    
    public int getItemCount() {
        return items.size();
    }

}

