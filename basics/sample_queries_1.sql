**Commit** the changes. Now your README is set.

---

# **STEP 4: ADD FILES & CODE EXAMPLES**

Below are **sample files** with some SQL queries and notes. You can customize them to reflect your own style or experiences.

## **4.1 basics/simple_queries.sql**
Create a new file named `simple_queries.sql` under `basics/`:

```sql
-- simple_queries.sql
-- Basic SELECT queries to demonstrate fundamental syntax
-- Example uses a fictional "customers" and "orders" table

-- 1. Retrieve all customers
SELECT * 
FROM customers;

-- 2. Retrieve only customers from the USA, ordered by last name
SELECT customer_id, first_name, last_name, country
FROM customers
WHERE country = 'USA'
ORDER BY last_name;

-- 3. Count how many orders exist in the 'orders' table
SELECT COUNT(*) AS total_orders
FROM orders;

-- 4. Get total sales amount by month (assuming we have an order_date & total_amount)
SELECT DATE_TRUNC('month', order_date) AS order_month,
       SUM(total_amount) AS total_revenue
FROM orders
GROUP BY 1
ORDER BY 1;

-- (Postgres syntax for DATE_TRUNC — adjust if using MySQL or SQL Server)
