-- 03_category_sales_filtered.sql
-- Total sales for a specific category (example: Clothing)

WITH category_Sales AS
(
    SELECT 
        p.category,
        p.subcategory,
        SUM(s.sales_amount) AS total_sales
    FROM gold.fact_sales s
    LEFT JOIN gold.dim_products p
        ON s.product_key = p.product_key
    WHERE p.category = 'Clothing'
    GROUP BY p.category, p.subcategory
)
SELECT 
    category,
    subcategory,
    total_sales AS category_total_sales,
    CONCAT(
        ROUND(CAST(total_sales AS FLOAT) / SUM(total_sales) OVER() * 100, 2),
        ' %'
    ) AS percentage_of_total_sales
FROM category_Sales
ORDER BY category_total_sales DESC;
