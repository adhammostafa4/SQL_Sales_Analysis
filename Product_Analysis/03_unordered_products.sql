-- 03_unordered_products.sql
-- Count products in dim_products never sold

SELECT 
    COUNT(DISTINCT p.product_key) - COUNT(DISTINCT s.product_key) AS non_purchasing_products
FROM gold.dim_products p
LEFT JOIN gold.fact_sales s
    ON s.product_key = p.product_key;
