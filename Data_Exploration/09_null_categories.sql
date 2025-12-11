-- 09_null_categories.sql
-- Products with NULL category

SELECT *
FROM gold.dim_products
WHERE category IS NULL;
