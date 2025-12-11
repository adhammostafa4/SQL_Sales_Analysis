-- 15_category_subcategory_list.sql
-- Unique category-subcategory combos with sales

SELECT DISTINCT
    p.category,
    p.subcategory
FROM gold.fact_sales s
LEFT JOIN gold.dim_products p
    ON s.product_key = p.product_key;
