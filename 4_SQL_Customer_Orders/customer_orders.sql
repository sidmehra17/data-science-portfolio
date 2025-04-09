-- Sample SQL Queries

-- 1. Top 5 highest-spending customers
SELECT customer_id, SUM(order_amount) AS total_spent
FROM orders
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 5;

-- 2. Monthly revenue trend
SELECT DATE_TRUNC('month', order_date) AS month, SUM(order_amount) AS revenue
FROM orders
GROUP BY month
ORDER BY month;

-- 3. Most frequently purchased product
SELECT product_id, COUNT(*) AS times_ordered
FROM order_items
GROUP BY product_id
ORDER BY times_ordered DESC
LIMIT 1;
