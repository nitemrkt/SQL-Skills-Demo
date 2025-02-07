-- joins_subqueries.sql
-- Intermediate-level SQL featuring JOINs and subqueries

-- 1. Inner Join Example
SELECT c.customer_id, c.first_name, c.last_name, o.order_id, o.total_amount
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_date BETWEEN '2025-01-01' AND '2025-12-31';

-- 2. Left Join for "Customers with or without Orders"
SELECT c.customer_id, c.first_name, c.last_name, o.order_id
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
ORDER BY c.last_name;

-- 3. Subquery Example - Find customers who placed orders above the average total_amount
SELECT customer_id, first_name, last_name
FROM customers
WHERE customer_id IN (
  SELECT customer_id 
  FROM orders
  GROUP BY customer_id
  HAVING AVG(total_amount) > (
    SELECT AVG(total_amount) FROM orders
  )
);

-- 4. Correlated Subquery to get each customer's total orders
SELECT c.customer_id, c.first_name, c.last_name,
       (SELECT COUNT(*) 
        FROM orders o 
        WHERE o.customer_id = c.customer_id) AS total_orders
FROM customers c;
