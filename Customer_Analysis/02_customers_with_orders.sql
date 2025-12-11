-- 02_customers_with_orders.sql
-- Customers who placed at least one order

SELECT 
    COUNT(DISTINCT customer_key) AS num_of_customers_ordered
FROM gold.fact_sales;
