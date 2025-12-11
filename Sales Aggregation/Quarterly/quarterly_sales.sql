-- quarterly_sales.sql
-- Quarterly sales metrics

SELECT 
    DATETRUNC(QUARTER, order_date) AS order_quarter_date,
    SUM(sales_amount) AS total_quarter_sales,
    COUNT(DISTINCT customer_key) AS total_customers,
    SUM(quantity) AS total_quantity
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY DATETRUNC(QUARTER, order_date)
ORDER BY order_quarter_date ASC;
