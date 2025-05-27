package model;

import java.util.ArrayList;
import java.util.List;

public class Customerinfo {
    private List<Customer> customers = new ArrayList<>();
    
    public void addCustomer(Customer customer) {
        customers.add(customer);
    }
    public void removeCustomer(String username) {
        for (int i = 0; i < customers.size(); i++) {
            if (String.valueOf(customers.get(i).getUsername()).equals(username)) {
                customers.remove(i);
                break;
            }
        }
    }
    public void updateCustomer(String username, Customer updatedCustomer) {
        for (int i = 0; i < customers.size(); i++) {
            if (String.valueOf(customers.get(i).getUsername()).equals(username)) {
                customers.set(i, updatedCustomer);
                break;
            }
        }
    }

    public List<Customer> getInfo() {
        return customers;
    }
    
}
