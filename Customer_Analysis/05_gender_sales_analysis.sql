-- 05_gender_sales_analysis.sql
-- Sales distribution by customer gender

WITH Gender_Total_Sales AS
(
    SELECT 
        c.gender,
        SUM(s.sales_amount) AS total_sales
    FROM gold.fact_sales s
    LEFT JOIN gold.dim_customers c
        ON s.customer_key = c.customer_key
    GROUP BY c.gender
)

SELECT
    gender,
    total_sales AS total_gender_sales,
    SUM(total_sales) OVER() AS total_sales_overall,
    CONCAT(
        ROUND(CAST(total_sales AS FLOAT) / CAST(SUM(total_sales) OVER() AS FLOAT) * 100, 2),
        ' %'
    ) AS percentage_of_total_sales
FROM Gender_Total_Sales
ORDER BY percentage_of_total_sales DESC;
