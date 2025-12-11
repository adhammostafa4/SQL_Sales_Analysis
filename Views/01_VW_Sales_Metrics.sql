-- 01_VW_Sales_Metrics.sql
-- View: VW_Sales_Metrics
-- Description: Provides key sales metrics from the fact_sales table, including:
--   1. Number of Orders
--   2. Total Sales
--   3. Total Quantity
--   4. Number of Customers
--   5. Lifespan (in months)
-- Purpose: Consolidates important sales KPIs into a single, easy-to-query view

CREATE OR ALTER VIEW VW_Sales_Metrics AS
SELECT 'Number of Orders'   AS Metric_Name, COUNT(DISTINCT order_number) AS Metric_Value
FROM gold.fact_sales
UNION ALL
SELECT 'Total Sales', SUM(sales_amount)
FROM gold.fact_sales
UNION ALL
SELECT 'Total Quantity', SUM(quantity)
FROM gold.fact_sales
UNION ALL
SELECT 'Number of Customers', COUNT(DISTINCT customer_key)
FROM gold.fact_sales
UNION ALL
SELECT 'Lifespan', DATEDIFF(MONTH, MIN(order_date), MAX(order_date))
FROM gold.fact_sales;
