-- 05_total_cost_of_products.sql
-- Sum of cost across all products

SELECT 
    SUM(cost) AS total_cost
FROM gold.dim_products;
