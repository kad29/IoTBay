CREATE TABLE IF NOT EXISTS users (
    id INTEGER PRIMARY KEY,
    username TEXT NOT NULL UNIQUE,
    full_name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    password TEXT NOT NULL,
    phone TEXT,
    role TEXT DEFAULT 'customer',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS access_log (
    id INTEGER PRIMARY KEY,
    user_id INTEGER NOT NULL,
    login_time DATETIME,
    logout_time DATETIME,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

-- INSERT INTO users (username, full_name, email, password, phone, role) VALUES
-- ('aaa', 'AAA', 'aaa@example.com', '12345678', '0400000001', 'customer'),
-- ('bbb', 'BBB', 'bbb@example.com', '12345678', '0400000002', 'customer'),
-- ('ccc', 'CCC', 'ccc@example.com', '12345678', '0400000003', 'admin');

-- INSERT INTO access_log (user_id, login_time, logout_time) VALUES
-- (1, '2025-05-20 10:00:00', '2025-05-20 11:00:00'),
-- (2, '2025-05-20 12:00:00', '2025-05-20 13:00:00'),
-- (3, '2025-05-21 08:00:00', '2025-05-21 17:00:00');

