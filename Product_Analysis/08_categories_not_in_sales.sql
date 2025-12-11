-- 08_categories_not_in_sales.sql
-- Categories with no sales

SELECT DISTINCT category
FROM gold.dim_products
WHERE category NOT IN (
    SELECT DISTINCT p.category
    FROM gold.fact_sales s
    LEFT JOIN gold.dim_products p
        ON s.product_key = p.product_key
);
