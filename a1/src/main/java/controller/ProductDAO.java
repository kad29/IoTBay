package controller;

import model.Product;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;



public class ProductDAO {
  private static final String DB_URL = "jdbc:sqlite:.../database/manager.db";

  
    public ProductDAO() {
        createTableIfNotExists();
    }

    private void createTableIfNotExists() {
        String sql = "CREATE TABLE IF NOT EXISTS products ("
                   + "id INTEGER PRIMARY KEY AUTOINCREMENT,"
                   + "name TEXT NOT NULL,"
                   + "type TEXT NOT NULL,"
                   + "price REAL NOT NULL,"
                   + "quantity INTEGER NOT NULL"
                   + ");";

        try (Connection conn = connect();
             Statement stmt = conn.createStatement()) {
            stmt.execute(sql);
        } catch (SQLException e) {
            System.out.println("Error creating table: " + e.getMessage());
        }
    }

  private Connection connect() throws SQLException {
    return DriverManager.getConnection(DB_URL);
  }


  public void addProduct(Product product) {
    String sql = "INSERT INTO products(name, type, price, quantity) VALUES(?, ?, ?, ?)";

    try (Connection conn = connect();
      PreparedStatement pstmt = conn.prepareStatement(sql)) {
      pstmt.setString(1, product.getName());
      pstmt.setString(2, product.getType());
      pstmt.setDouble(3, product.getPrice());
      pstmt.setInt(4, product.getQuantity());
      pstmt.executeUpdate();
      System.out.println("Product added successfully.");
    } catch (SQLException e) {
      System.out.println("Error adding product: " + e.getMessage());
    }
  }
}

public static void main(String[] args) {
  Product product = new Product("Laptop", "Electronics", 999.99, 5);
  ProductDAO dao = new ProductDAO();
  dao.addProduct(product);
}