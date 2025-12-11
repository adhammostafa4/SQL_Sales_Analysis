-- 10_category_id_filter.sql
-- Products filtered by category_id = 'CO_PE'

SELECT *
FROM gold.dim_products
WHERE category_id = 'CO_PE';
