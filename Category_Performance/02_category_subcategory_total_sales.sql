-- 02_category_subcategory_total_sales.sql
-- Total sales by category and subcategory with percentage

WITH category_subcategory_Sales AS
(
    SELECT 
        p.category,
        p.subcategory,
        SUM(s.sales_amount) AS total_sales
    FROM gold.fact_sales s
    LEFT JOIN gold.dim_products p
        ON s.product_key = p.product_key
    GROUP BY p.category, p.subcategory
)
SELECT 
    category,
    subcategory,
    total_sales AS category_subcategory_total_sales,
    CONCAT(
        ROUND(CAST(total_sales AS FLOAT) / SUM(total_sales) OVER() * 100, 2),
        ' %'
    ) AS percentage_of_total_sales
FROM category_subcategory_Sales
ORDER BY category_subcategory_total_sales DESC, category ASC;
