# Data Exploration Queries

This folder contains SQL queries focused on **exploring the datasets** before performing detailed analysis.  
The goal of these queries is to understand the structure, content, and basic metrics of the data.

## Purpose
- Get an overview of the datasets: products, customers, and sales.
- Identify the number of records, categories, subcategories, and products.
- Check for missing or non-purchasing products/customers.
- Summarize basic sales metrics like total sales, total quantity, and number of orders.

## Key Queries

### Product Exploration
- Count of products, categories, and subcategories.
- Total cost of all products.
- List products sorted by cost (ascending/descending).
- Identify products that were never purchased.

### Customer Exploration
- Total number of customers.
- Number of customers who placed orders.
- Non-purchasing customers.
- Distribution by gender and country (optional in exploration stage).

### Sales Exploration
- Count total orders and total sales amount.
- Total quantity sold.
- Daily, monthly, quarterly, yearly sales summaries (basic aggregates).
- Lifespan of sales data (months covered in dataset).

## Notes
- These queries help **understand the dataset** and **prepare for advanced analysis** in subsequent folders like Customer Analysis, Product Analysis, and Category Performance.
- They provide **baseline metrics** to validate data quality and consistency before building reports, views, or stored procedures.
