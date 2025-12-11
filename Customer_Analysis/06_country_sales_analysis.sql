-- 06_country_sales_analysis.sql
-- Total sales and percentage by country

WITH total_country_sales AS
(
    SELECT 
        c.country, 
        SUM(s.sales_amount) AS total_sales
    FROM gold.fact_sales s
    LEFT JOIN gold.dim_customers c
        ON s.customer_key = c.customer_key
    WHERE c.country IS NOT NULL
    GROUP BY c.country
)
SELECT
    country,
    total_sales AS total_country_sales,
    SUM(total_sales) OVER() AS total_sales_overall,
    CONCAT(
        ROUND(CAST(total_sales AS FLOAT) / CAST(SUM(total_sales) OVER() AS FLOAT) * 100, 2),
        ' %'
    ) AS percentage_of_total_sales
FROM total_country_sales
ORDER BY total_country_sales DESC;
