-- 09_category_subcategory_not_sold_left_join.sql
-- Category-subcategory combos with no sales (LEFT JOIN)

SELECT DISTINCT 
    p.category, 
    p.subcategory
FROM gold.dim_products p
LEFT JOIN gold.fact_sales s
    ON s.product_key = p.product_key
WHERE s.product_key IS NULL
  AND (p.category IS NOT NULL OR p.subcategory IS NOT NULL);
