-- 01_count_products.sql
-- Count distinct products in dim_products

SELECT 
    COUNT(DISTINCT product_key) AS num_of_products
FROM gold.dim_products;
