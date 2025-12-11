-- 07_category_total_sales.sql
-- Total sales by category

SELECT 
    p.category,
    SUM(s.sales_amount) AS total_sales
FROM gold.fact_sales s
LEFT JOIN gold.dim_products p
    ON s.product_key = p.product_key
WHERE p.category IS NOT NULL
GROUP BY p.category
ORDER BY total_sales DESC;
