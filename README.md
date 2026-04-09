Sales Analysis Project (SQL + Power BI)

Project Overview

This project analyzes a retail sales dataset to identify key drivers of revenue and profitability. The goal is to understand business performance across products, customers, regions, and discount strategies, and provide actionable insights.

Tools Used

Excel– Initial data exploration
SQL (PostgreSQL)– Data analysis and business logic
Power BI– Data visualization and dashboard creation

Approach

* Explored dataset using Excel to understand structure and patterns
* Performed data analysis in SQL:

  * Sales, profit, and margin calculations
  * Customer and product analysis
  * Discount impact evaluation
  * Built an interactive Power BI dashboard to visualize insights

Key Insights

* High discounts significantly reduce profitability and often lead to losses
* Furniture category is consistently loss-making despite generating revenue
* Technology category is the most profitable segment
* Some high-selling products are unprofitable due to heavy discounting
* A small group of customers contributes a large portion of total revenue
* Several customers generate negative profit due to aggressive discounting
* Most customers place multiple orders (3+), indicating strong retention
* Average orders per customer is high, suggesting dependency on repeat buyers
* Sales are growing over time, but profit growth is not proportional
* Certain regions outperform others, indicating geographic imbalance

Dashboard Preview

1. Business Overview

* Total Sales, Profit, Profit Margin, Orders
* Sales by Region and Category
* Time-based trend analysis

2. Product Analysis

* Category and Sub-category performance
* Top 10 products by sales
* Loss-making products

3. Discount Analysis

* Profitability by discount group
* Category-wise impact of discounting

4. Customer Analysis

* Top and bottom customers
* Customer order frequency
* Revenue contribution analysis

📁 Files Included

* `sales_analysis.sql` → SQL queries used for analysis
* `dashboard.pbix` → Power BI dashboard file
* `dataset.csv` → Source dataset
* `screenshots/` → Dashboard preview images

Conclusion

The analysis shows that while the business generates strong revenue, profitability is impacted by aggressive discounting and loss-making products. Strategic improvements in pricing, discount policies, and product selection can significantly enhance overall performance.
