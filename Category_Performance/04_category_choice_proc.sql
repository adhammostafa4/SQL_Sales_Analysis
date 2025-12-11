-- 04_category_choice_proc.sql
-- Stored procedure to return total sales for a chosen category

CREATE PROCEDURE category_choice_for_sales_proc
    @category VARCHAR(50)
AS
BEGIN
    WITH category_Sales AS
    (
        SELECT 
            p.category,
            p.subcategory,
            SUM(s.sales_amount) AS total_sales
        FROM gold.fact_sales s
        LEFT JOIN gold.dim_products p
            ON s.product_key = p.product_key
        WHERE p.category = @category
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
END;

-- Example execution
EXEC category_choice_for_sales_proc 'Bikes';
EXEC category_choice_for_sales_proc 'Accessories';
EXEC category_choice_for_sales_proc 'Clothing';
