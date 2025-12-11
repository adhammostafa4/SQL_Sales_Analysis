-- 02_VW_Percentage_Yearly_Sales.sql
-- View: VW_Percentage_Yearly_Sales
-- Description: Calculates total yearly sales and the percentage contribution of each year relative to total sales
-- Purpose: Provides insights into yearly sales distribution as a percentage of overall sales

CREATE OR ALTER VIEW VW_Percentage_Yearly_Sales AS
WITH Yearly_Sales AS
(
    SELECT 
        YEAR(order_date) AS order_year,
        SUM(sales_amount) AS total_sales
    FROM gold.fact_sales
    WHERE order_date IS NOT NULL
    GROUP BY YEAR(order_date)
)
SELECT 
    order_year,
    total_sales,
    CONCAT(
        ROUND(
            CAST(total_sales AS FLOAT) / CAST(SUM(total_sales) OVER() AS FLOAT) * 100,
            2
        ),
        ' %'
    ) AS percentage_of_each_year
FROM Yearly_Sales;

-- select from view
SELECT * FROM VW_Percentage_Yearly_Sales;