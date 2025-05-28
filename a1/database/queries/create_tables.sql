

CREATE TABLE Product (
    productID int(10),
    productName VARCHAR(20),
    productType VARCHAR(20),
    price double(10),
    quantity int(10),
);

CREATE TABLE Customer (
    name VARCHAR(255),
    username VARCHAR(15),
    email VARCHAR(255) PRIMARY KEY,
    phoneNumber VARCHAR(15),
    password VARCHAR(255)
);



CREATE TABLE Orders(
    orderID INTEGER PRIMARY KEY AUTOINCREMENT,
    email VARCHAR(255),
    orderDate DATE,
    totalAmount DECIMAL(10,2),
    FOREIGN KEY (email) REFERENCES Customer(email)
);



CREATE TABLE Payments (
    payment_id INTEGER AUTO_INCREMENT,
    order_id INTEGER,
    method TEXT,
    card_number TEXT,
    card_expiry_date TEXT,
    card_cvv TEXT,
    amount INTEGER,

    CONSTRAINT Payments_PK PRIMARY KEY (payment_id),
    CONSTRAINT Payments_FK FOREIGN KEY (order_id) REFERENCES orders(order_id)
);


