-- Calculate the average order value per customer
CREATE VIEW avg_order_value AS
SELECT customer, AVG(total_sales) AS avg_order_value
FROM retail_sales_large
GROUP BY customer;

-- Calculate monthly sales and profit trends
CREATE VIEW monthly_sales_profit AS
SELECT DATE_TRUNC('month', sale_date) AS month,
       SUM(total_sales) AS total_sales,
       SUM(profit) AS total_profit
FROM retail_sales_large
GROUP BY month
ORDER BY month;