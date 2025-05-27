CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    phone VARCHAR(20),
    role VARCHAR(20) DEFAULT 'customer',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE access_log (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    login_time DATETIME,
    logout_time DATETIME,
    FOREIGN KEY (user_id) REFERENCES users(id)
);


INSERT INTO users (username, full_name, email, password, phone, role) VALUES
('aaa', 'AAA', 'aaa@example.com', '12345678', '0400000001', 'customer'),
('bbb', 'BBB', 'bbb@example.com', '12345678', '0400000002', 'customer'),
('ccc', 'CCC', 'ccc@example.com', '12345678', '0400000003', 'admin');


INSERT INTO access_log (user_id, login_time, logout_time) VALUES
(1, '2025-05-20 10:00:00', '2025-05-20 11:00:00'),
(2, '2025-05-20 12:00:00', '2025-05-20 13:00:00'),
(3, '2025-05-21 08:00:00', '2025-05-21 17:00:00');
