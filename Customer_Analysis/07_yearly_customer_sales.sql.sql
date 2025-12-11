-- 07_yearly_customer_sales.sql
-- Yearly total sales and percentage contribution

WITH Yearly_Sales AS
(
    SELECT 
        YEAR(order_date) AS order_year,
        SUM(sales_amount) AS total_sales
    FROM gold.fact_sales
    WHERE order_date IS NOT NULL
    GROUP BY YEAR(order_date)
)
SELECT 
    order_year,
    total_sales,
    CONCAT(
        ROUND(CAST(total_sales AS FLOAT) / CAST(SUM(total_sales) OVER() AS FLOAT) * 100, 2),
        ' %'
    ) AS percentage_of_each_year
FROM Yearly_Sales
ORDER BY order_year ASC;
