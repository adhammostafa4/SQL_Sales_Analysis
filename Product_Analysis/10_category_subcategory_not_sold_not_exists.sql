-- 10_category_subcategory_not_sold_not_exists.sql
-- Category-subcategory combos with no sales (NOT EXISTS)

SELECT DISTINCT 
    category, 
    subcategory
FROM gold.dim_products dp
WHERE NOT EXISTS (
    SELECT 1
    FROM gold.fact_sales fs
    WHERE fs.product_key = dp.product_key
);
