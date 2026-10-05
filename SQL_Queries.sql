-- 1. Total Sales
SELECT SUM(sales) AS total_sales
FROM sales;

-- 2. Total Profit
SELECT SUM(profit) AS total_profit
FROM sales;

-- 3. Total Orders
SELECT COUNT(DISTINCT order_id) AS total_orders
FROM sales;

-- 4. Sales by Category
SELECT category, SUM(sales) AS total_sales
FROM sales
GROUP BY category
ORDER BY total_sales DESC;

-- 5. Profit by Category
SELECT category, SUM(profit) AS total_profit
FROM sales
GROUP BY category
ORDER BY total_profit DESC;

-- 6. Sales by Region
SELECT region, SUM(sales) AS total_sales
FROM sales
GROUP BY region
ORDER BY total_sales DESC;

-- 7. Sales by Year
SELECT YEAR(order_date) AS order_year, SUM(sales) AS total_sales
FROM sales
GROUP BY YEAR(order_date)
ORDER BY order_year;

-- 8. Top 5 Sub-Categories by Sales
SELECT sub_category, SUM(sales) AS total_sales
FROM sales
GROUP BY sub_category
ORDER BY total_sales DESC
LIMIT 5;

-- 9. Top 5 Sub-Categories by Profit
SELECT sub_category, SUM(profit) AS total_profit
FROM sales
GROUP BY sub_category
ORDER BY total_profit DESC
LIMIT 5;

-- 10. Bottom 5 Sub-Categories by Profit
SELECT sub_category, SUM(profit) AS total_profit
FROM sales
GROUP BY sub_category
ORDER BY total_profit ASC
LIMIT 5;

-- 11. Top 10 Customers by Sales
SELECT customer_name, SUM(sales) AS total_sales
FROM sales
GROUP BY customer_name
ORDER BY total_sales DESC
LIMIT 10;

-- 12. Top 10 Customers by Profit
SELECT customer_name, SUM(profit) AS total_profit
FROM sales
GROUP BY customer_name
ORDER BY total_profit DESC
LIMIT 10;
