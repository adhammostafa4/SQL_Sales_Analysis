-- 07_products_sorted_by_cost_asc.sql
-- Products ordered by cost (ascending)

SELECT 
    product_key,
    product_name,
    category,
    subcategory,
    cost
FROM gold.dim_products
ORDER BY cost ASC;
