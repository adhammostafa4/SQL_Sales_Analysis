-- 08_cost_by_category.sql
-- Total cost per product category

SELECT 
    category,
    SUM(cost) AS total_cost
FROM gold.dim_products
GROUP BY category
ORDER BY total_cost DESC;
