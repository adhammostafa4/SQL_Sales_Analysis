-- 02_count_categories.sql
-- Count distinct categories in dim_products

SELECT 
    COUNT(DISTINCT category) AS num_of_categories
FROM gold.dim_products;
