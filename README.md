# SQL-Joins

Objective
Learn how to combine data from multiple tables using SQL join types: INNER JOIN, LEFT JOIN, and RIGHT JOIN.

Tools
- MySQL Workbench

Database: customers
1. Create Database and Tables
The database schema consists of two tables:

- Customers Table:
    - customer_id (primary key)
    - name
- Orders Table:
    - order_id (primary key)
    - customer_id (foreign key referencing customers)
    - product

Join Queries
1. INNER JOIN – Matching records only
Returns customers who have placed orders.

2. LEFT JOIN – All customers, even if no orders
Returns all customers, along with any orders (if available).

3. RIGHT JOIN – All orders, even if no matching customer (MySQL only)
Returns all orders, even if the customer_id is missing in the customers table.
