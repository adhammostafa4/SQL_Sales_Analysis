-- 12_products_not_sold_list.sql
-- Products never sold

SELECT DISTINCT
    p.product_name,
    p.category,
    p.subcategory
FROM gold.dim_products p
LEFT JOIN gold.fact_sales s
    ON s.product_key = p.product_key
WHERE s.product_key IS NULL;
