# Intermediate SQL Exercises

1. **Orders with No Matching Customer**  
   - Write a query using a join to find if there are any orders that don't match a customer record.  
   - *Hint*: Use a RIGHT JOIN or FULL JOIN (depending on your database) and check for `NULL` customer IDs.

2. **Top 3 Customers by Total Spent**  
   - Use a window function to identify the top 3 highest spending customers.

3. **Subquery Filter**  
   - Find all customers who have spent more than double the average order amount (Hint: nested subqueries or a correlated subquery).
