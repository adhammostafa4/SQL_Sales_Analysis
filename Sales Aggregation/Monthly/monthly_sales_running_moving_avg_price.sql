-- monthly_sales_running_moving_avg_price.sql
-- Monthly sales metrics with running total and moving average price

WITH Monthly_Sales AS
(
    SELECT 
        DATETRUNC(MONTH, order_date) AS order_month_date,
        SUM(sales_amount) AS total_sales,
        AVG(price) AS avg_price
    FROM gold.fact_sales
    WHERE order_date IS NOT NULL
    GROUP BY DATETRUNC(MONTH, order_date)
)
SELECT
    order_month_date,
    total_sales,
    SUM(total_sales) OVER (ORDER BY order_month_date) AS running_total_sales,
    AVG(avg_price) OVER (ORDER BY order_month_date) AS moving_average_price
FROM Monthly_Sales
ORDER BY order_month_date;
