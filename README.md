# SQL Sales Analytics Portfolio

## Overview
This portfolio showcases SQL skills applied to business sales and customer analysis. It includes queries, stored procedures, and views that analyze sales data at multiple levels: customer, product, category, and time-based aggregations.

The project demonstrates:
- Customer behavior analysis (total sales, number of orders, demographics)
- Product and category performance analysis
- Time-based sales trends (daily, monthly, quarterly, yearly)
- Reusable SQL views for reporting
- Stored procedures for dynamic reporting

## Datasets
The analysis uses three main datasets:
1. **dim_customers**: Customer information (name, gender, country)
2. **dim_products**: Product catalog (name, category, subcategory, cost)
3. **fact_sales**: Sales transactions (order number, product, customer, date, quantity, price, total sales)

## Key Features
- Customer Metrics: Total customers, number of orders, non-purchasing customers
- Product Metrics: Total products, sales per category/subcategory, non-purchased products
- Sales Metrics: Total sales, total quantity, running totals, moving averages
- Category & Subcategory Performance: Total sales, percentage contributions, orders count
- Reusable Views: VW_Sales_Metrics, VW_Percentage_Yearly_Sales
- Stored Procedures: Dynamic sales reporting by category

## Folder Structure

