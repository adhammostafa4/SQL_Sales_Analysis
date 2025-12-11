-- 06_category_subcategory_total_sales.sql
-- Sum sales by category & subcategory

SELECT DISTINCT
    p.category,
    p.subcategory,
    SUM(s.sales_amount) AS total_sales
FROM gold.fact_sales s
LEFT JOIN gold.dim_products p
    ON s.product_key = p.product_key
WHERE p.category IS NOT NULL OR p.subcategory IS NOT NULL
GROUP BY p.category, p.subcategory
ORDER BY total_sales DESC;
