-- window_functions.sql
-- Demonstration of window/analytic functions

-- 1. Ranking Customers by Total Spending
SELECT customer_id, order_date, total_amount,
       SUM(total_amount) OVER (PARTITION BY customer_id) AS total_spent_by_customer,
       RANK() OVER (ORDER BY SUM(total_amount) OVER (PARTITION BY customer_id) DESC) AS spending_rank
FROM orders;

-- 2. Running Total of Orders Over Time
SELECT order_id, order_date, total_amount,
       SUM(total_amount) OVER (ORDER BY order_date ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS running_total
FROM orders
ORDER BY order_date;
