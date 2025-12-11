-- daily_sales_running.sql
-- Daily total sales with running cumulative total

WITH Daily_Sales AS
(
    SELECT 
        order_date,
        SUM(sales_amount) AS total_sales
    FROM gold.fact_sales
    WHERE order_date IS NOT NULL
    GROUP BY order_date
)
SELECT
    order_date,
    total_sales,
    SUM(total_sales) OVER (ORDER BY order_date) AS running_total_sales
FROM Daily_Sales
ORDER BY order_date;
