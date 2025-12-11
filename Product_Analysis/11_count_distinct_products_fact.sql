-- 11_count_distinct_products_fact.sql
-- Count distinct products sold

SELECT COUNT(DISTINCT product_key) AS num_of_products_sold
FROM gold.fact_sales;
