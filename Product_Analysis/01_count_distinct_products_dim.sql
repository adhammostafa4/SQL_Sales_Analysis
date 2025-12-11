-- 01_count_distinct_products_dim.sql
-- Count distinct products in dim_products

SELECT 
    COUNT(DISTINCT product_key) AS num_of_Products
FROM gold.dim_products;
