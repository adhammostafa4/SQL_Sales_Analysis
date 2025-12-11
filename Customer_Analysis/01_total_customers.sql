-- 01_total_customers.sql
-- Total distinct customers in dim_customers

SELECT 
    COUNT(DISTINCT customer_key) AS num_of_customers
FROM gold.dim_customers;
