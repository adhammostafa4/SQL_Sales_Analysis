-- 14_orders_by_category_subcategory.sql
-- Number of orders per category-subcategory

SELECT 
    p.category,
    p.subcategory,
    COUNT(DISTINCT s.order_number) AS num_of_orders
FROM gold.fact_sales s
LEFT JOIN gold.dim_products p
    ON s.product_key = p.product_key
GROUP BY p.category, p.subcategory
ORDER BY num_of_orders DESC;
