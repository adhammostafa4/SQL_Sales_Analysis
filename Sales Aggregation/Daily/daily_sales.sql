-- daily_sales.sql
-- Daily sales metrics: total sales, total customers, total quantity

SELECT 
    order_date,
    SUM(sales_amount) AS total_daily_sales,
    COUNT(DISTINCT customer_key) AS total_customers,
    SUM(quantity) AS total_quantity
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY order_date
ORDER BY order_date ASC;
