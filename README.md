📊 Superstore Sales Performance Analysis (PostgreSQL & SQL)

This repository contains a complete workflow for sales data analysis using PostgreSQL (SQL) with import from Excel, advanced analytics, and business insights extraction. The project simulates analysis for a fictional Superstore, demonstrating both practical SQL techniques and real-world problem solving.

🧾 Project Overview

Objective:
Analyze Superstore sales data using SQL in PostgreSQL to uncover trends, performance, and actionable business insights for strategic decision making.

Data imported, cleaned, and transformed using PostgreSQL

Core and advanced SQL queries for KPI extraction and pattern discovery

Insights applicable for retail analytics, customer segmentation, and profitability improvements

🛠️ Tools Used

PostgreSQL (via pgAdmin/psql) — Database creation, import, and all data analysis queries

Excel — Initial data cleaning and CSV export

VS Code/Text Editor — For query writing, data inspection, and documentation

(Optional) Power BI/Other BI Tool — For further visualization, if needed

📂 Dataset Description

Source: Fictional retail Superstore sales data (Excel/CSV)
Columns:
row_id | Unique row identifier
order_id | Unique order code
order_date | Date order was placed
ship_date | Date order shipped
ship_mode | Ship category (Standard, Second Class...)
customer_id | Customer's unique ID
customer_name | Name of customer
segment | Customer segment
country | Country of customer
city | City
state | State
postal_code | Zip/Postal code
region | Region
product_id | Unique product identifier
category | Product category
sub_category | Product sub-category
sales | Sales amount
quantity | Number of units sold
discount | Discount applied
profit | Profit earned (can be negative)

Note: The product_name column was removed for clean import due to formatting issues (escaped quotes).

🗂️ Project Structure

/
├── data/ # CSV/Excel files
├── sql/ # SQL schema and analysis queries
├── screenshots/ # pgAdmin query and result screenshots
├── README.md # Project documentation

❓ Questions Answered with SQL

Fundamental Analysis

Total sales, profit, and quantities

Top selling states, regions, and segments

Monthly, quarterly, and yearly sales trends

Most/least profitable orders

Advanced Analytics (SQL Window Functions)

Year-on-year and monthly growth rates

Quarterly and seasonal sales comparisons

Customer repeat purchase behavior

Aggregate trend lines and moving averages

Discount impact and margin analysis

Example Advanced Queries

Cumulative profit over time

Top regions/products by ranking

Loss-making transactions

Segment-based performance trends

📈 Key Insights

Technology category and West region consistently outperform others.

High discounts strongly correlate with lower or negative profits.

Holiday months (Nov/Dec) show peak sales volumes.

Significant number of loss-making orders need further investigation.

🏁 Conclusion

This project demonstrates the use of PostgreSQL and SQL for practical business analysis—from initial data wrangling to KPIs and trend discovery. It offers a template for retail businesses to measure performance and optimize profitability directly within modern databases.

📬 Contact

Author: Siddhesh Salve
GitHub: siddheshsalve77 (https://github.com/siddheshsalve77)
Email: siddhesh.salve77@gmail.com
