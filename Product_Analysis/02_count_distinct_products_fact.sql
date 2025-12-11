-- 02_count_distinct_products_fact.sql
-- Count distinct products that have sales

SELECT 
    COUNT(DISTINCT product_key) AS num_of_products_ordered
FROM gold.fact_sales;
