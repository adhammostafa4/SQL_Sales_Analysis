-- quarterly_sales_running_moving_avg_price.sql
-- Quarterly sales with running total and moving average price

WITH Quarterly_Sales AS
(
    SELECT 
        DATETRUNC(QUARTER, order_date) AS order_quarter_date,
        SUM(sales_amount) AS total_sales,
        AVG(price) AS avg_price
    FROM gold.fact_sales
    WHERE order_date IS NOT NULL
    GROUP BY DATETRUNC(QUARTER, order_date)
)
SELECT
    order_quarter_date,
    total_sales,
    SUM(total_sales) OVER (ORDER BY order_quarter_date) AS running_total_sales,
    AVG(avg_price) OVER (ORDER BY order_quarter_date) AS moving_average_price
FROM Quarterly_Sales
ORDER BY order_quarter_date;
