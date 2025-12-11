-- 03_customers_without_orders.sql
-- Customers with no orders

SELECT 
    COUNT(DISTINCT c.customer_key) - COUNT(DISTINCT s.customer_key) AS non_purchasing_customers
FROM gold.dim_customers c
LEFT JOIN gold.fact_sales s
    ON s.customer_key = c.customer_key;
