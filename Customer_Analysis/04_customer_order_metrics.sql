-- 04_customer_order_metrics.sql
-- Number of orders, total sales, total quantity per customer

SELECT 
    CONCAT(c.first_name, ' ', c.last_name) AS full_name,
    COUNT(DISTINCT s.order_number) AS num_of_orders,
    SUM(s.sales_amount) AS total_sales,
    SUM(s.quantity) AS total_quantity
FROM gold.fact_sales s
LEFT JOIN gold.dim_customers c
    ON s.customer_key = c.customer_key
GROUP BY CONCAT(c.first_name, ' ', c.last_name)
ORDER BY total_sales DESC;
