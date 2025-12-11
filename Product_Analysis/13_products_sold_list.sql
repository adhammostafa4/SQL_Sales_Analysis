-- 13_products_sold_list.sql
-- Products that have been sold

SELECT DISTINCT
    p.product_name,
    p.category,
    p.subcategory
FROM gold.dim_products p
RIGHT JOIN gold.fact_sales s
    ON s.product_key = p.product_key;
