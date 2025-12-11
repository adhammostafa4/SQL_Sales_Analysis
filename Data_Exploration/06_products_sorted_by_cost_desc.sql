-- 06_products_sorted_by_cost_desc.sql
-- Products ordered by cost (descending)

SELECT 
    product_key,
    product_name,
    category,
    subcategory,
    cost
FROM gold.dim_products
ORDER BY cost DESC;
