-- Create a new database
CREATE DATABASE devops_db;

-- Switch to the database
USE devops_db;

-- Create a table
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert sample data
INSERT INTO users (name, email) VALUES 
('Alice', 'alice@example.com'),
('Bob', 'bob@example.com');

-- View data
SELECT * FROM users;

-- Update data
UPDATE users SET email = 'newalice@example.com' WHERE name = 'Alice';

-- Delete data
DELETE FROM users WHERE name = 'Bob';

-- Create new user with limited privileges
CREATE USER 'devuser'@'localhost' IDENTIFIED BY 'devpass';
GRANT SELECT, INSERT ON devops_db.* TO 'devuser'@'localhost';

-- Show databases and users
SHOW DATABASES;
SELECT user, host FROM mysql.user;
