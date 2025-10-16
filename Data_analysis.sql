--Year-over-Year Sales Growth
SELECT EXTRACT(YEAR FROM order_date) AS year,
       SUM(sales) AS yearly_sales,
       LAG(SUM(sales)) OVER (ORDER BY EXTRACT(YEAR FROM order_date)) AS prev_year_sales,
       ROUND((SUM(sales) - LAG(SUM(sales)) OVER (ORDER BY EXTRACT(YEAR FROM order_date))) * 100.0 / NULLIF(LAG(SUM(sales)) OVER (ORDER BY EXTRACT(YEAR FROM order_date)), 0), 2) AS yoy_growth_percent
FROM sales
GROUP BY year
ORDER BY year;


--Best Selling States (Top 5 by Average Sales per Order)
SELECT state, AVG(sales) AS avg_sales
FROM sales
GROUP BY state
ORDER BY avg_sales DESC
LIMIT 5;




--Monthly Moving Average of Sales (3-Month Window)

SELECT month,
       monthly_sales,
       ROUND(AVG(monthly_sales) OVER (ORDER BY month ROWS BETWEEN 2 PRECEDING AND CURRENT ROW), 2) AS moving_avg
FROM (
    SELECT DATE_TRUNC('month', order_date) AS month, SUM(sales) AS monthly_sales
    FROM sales
    GROUP BY month
) sub
ORDER BY month;


--Top 10 High-Discount Orders
SELECT order_id, discount, sales, profit
FROM sales
ORDER BY discount DESC
LIMIT 10;


--Order Profitability (Profit Margin %)
SELECT order_id, sales, profit,
  ROUND(profit * 100.0 / NULLIF(sales, 0), 2) AS profit_margin_percent
FROM sales
ORDER BY profit_margin_percent DESC
LIMIT 10;

--Quarterly Sales Overview
SELECT EXTRACT(YEAR FROM order_date) AS year, EXTRACT(QUARTER FROM order_date) AS quarter, SUM(sales) AS quarterly_sales
FROM sales
GROUP BY year, quarter
ORDER BY year, quarter;


--Customers with Repeat Orders (Orders > 1)
SELECT customer_id, customer_name, COUNT(DISTINCT order_id) AS num_orders, SUM(sales) AS total_sales
FROM sales
GROUP BY customer_id, customer_name
HAVING COUNT(DISTINCT order_id) > 1
ORDER BY num_orders DESC;


--State-wise Seasonal Sales Comparison (Winter vs. Summer)
SELECT state,
  SUM(CASE WHEN EXTRACT(MONTH FROM order_date) IN (12, 1, 2) THEN sales ELSE 0 END) AS winter_sales,
  SUM(CASE WHEN EXTRACT(MONTH FROM order_date) IN (6, 7, 8) THEN sales ELSE 0 END) AS summer_sales
FROM sales
GROUP BY state
ORDER BY winter_sales DESC;


--Top Product Category by Profit Contribution (excluding dropped column)
SELECT category, SUM(profit) AS total_profit
FROM sales
GROUP BY category
ORDER BY total_profit DESC
LIMIT 1;



--Cumulative Profit by Month
SELECT month, SUM(monthly_profit) OVER (ORDER BY month ROWS UNBOUNDED PRECEDING) AS cumulative_profit
FROM (
    SELECT DATE_TRUNC('month', order_date) AS month, SUM(profit) AS monthly_profit
    FROM sales
    GROUP BY month
) sub
ORDER BY month;





