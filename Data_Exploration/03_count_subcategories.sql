-- 03_count_subcategories.sql
-- Count distinct subcategories in dim_products

SELECT 
    COUNT(DISTINCT subcategory) AS num_of_subcategory
FROM gold.dim_products;
