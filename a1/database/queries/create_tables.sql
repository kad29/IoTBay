

CREATE TABLE Product (
    productID int(10),
    productName VARCHAR(20),
    productType VARCHAR(20),
    price double(10),
    quantity int(10),
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


