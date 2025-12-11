-- 04_category_subcategory_count.sql
-- Count distinct category-subcategory combinations

SELECT 
    COUNT(*) AS num_of_category_subcategory
FROM (
    SELECT DISTINCT category, subcategory
    FROM gold.dim_products
    WHERE category IS NOT NULL OR subcategory IS NOT NULL
) AS t;
