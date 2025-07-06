-- create database customers
create database customers;
use customers;
-- Create Customers table
CREATE TABLE customers (
  customer_id INTEGER PRIMARY KEY,
  name TEXT
);

-- Create Orders table
CREATE TABLE orders (
  order_id INTEGER PRIMARY KEY,
  customer_id INTEGER,
  product TEXT
);

-- Insert sample data into Customers
INSERT INTO customers (customer_id, name) VALUES
(1, 'Alice'),
(2, 'Bob'),
(3, 'Charlie'),
(4, 'David');

-- Insert sample data into Orders
INSERT INTO orders (order_id, customer_id, product) VALUES
(101, 1, 'Laptop'),
(102, 1, 'Mouse'),
(103, 2, 'Keyboard'),
(104, 5, 'Monitor');  -- customer_id 5 does not exist in Customers

-- 1. INNER JOIN: Customers with matching orders
SELECT c.name, o.product
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id;

-- 2. LEFT JOIN: All customers, even if no orders
SELECT c.name, o.product
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id;

-- 3. RIGHT JOIN: All orders, even if customer missing (MySQL only)
SELECT c.name, o.product
FROM customers c
RIGHT JOIN orders o ON c.customer_id = o.customer_id;



