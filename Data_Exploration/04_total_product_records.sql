-- 04_total_product_records.sql
-- Total rows in dim_products

SELECT 
    COUNT(*) AS total_product_rows
FROM gold.dim_products;
