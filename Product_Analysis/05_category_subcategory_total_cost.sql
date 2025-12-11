-- 05_category_subcategory_total_cost.sql
-- Sum cost by category & subcategory

SELECT 
    category,
    subcategory,
    SUM(cost) AS total_cost
FROM gold.dim_products
WHERE category IS NOT NULL OR subcategory IS NOT NULL
GROUP BY category, subcategory
ORDER BY total_cost DESC;
