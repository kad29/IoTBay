package model.dao;

import model.Customer;
import model.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/* 
* DBManager is the primary DAO class to interact with the database. 
* Complete the existing methods of this classes to perform CRUD operations with the db.
*/

public class DBManager {

    private Statement st;

    public DBManager(Connection conn) throws SQLException {
        st = conn.createStatement();
    }

    // Get all customers from the database
    public List<Customer> fetchAllCustomers() throws SQLException {
        List<Customer> customers = new ArrayList<>();
        String query = "SELECT * FROM Customer";
        ResultSet rs = st.executeQuery(query);
        while (rs.next()) {
            String name = rs.getString("name");
            String username = rs.getString("username");
            String email = rs.getString("email");
            int phone = rs.getInt("phone");
            String password = rs.getString("password");
            customers.add(new Customer(name, username, email, phone, password));
        }
        return customers;
    }

    // Find customer by username and password in the database
    public User findCustomer(String username, String password) throws SQLException {
        // setup the select sql query string
        String query = "SELECT * FROM Customer WHERE username = '" + username + "' AND password = '" + password + "'";

        // execute this query using the statement field
        // add the results to a ResultSet
        ResultSet rs = st.executeQuery(query);

        // search the ResultSet for a user using the parameters
        if (rs.next()) {
            String name = rs.getString("name");
            String email = rs.getString("email");
            String phone = rs.getString("phone");

            return new Customer(name, username, email, phone, password);
        }

        return null;
    }

    // Add a user-data into the database
    public void addCustomer(String name, String username, String email, int phone, String password) throws SQLException {
        st.executeUpdate("sql query");

    }

    // update a user details in the database
    public void updateCustomer(String name, String username, String email, int phone, String password) throws SQLException {
        st.executeQuery("UPDATE Customer SET name = '" + name + "', email = '" + email + "', phone = " + phone + ", password = '" + password + "' WHERE username = '" + username + "'");
    }

    // delete a user from the database
    public void deleteCustomer(String username) throws SQLException {
        st.executeUpdate("DELETE FROM Customer WHERE username = '" + username + "'");

    }

}