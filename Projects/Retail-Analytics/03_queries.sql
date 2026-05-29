-- Week 3 - Day 2: Analytical Queries
-- DB Fiddle Link: https://www.db-fiddle.com/f/f6KtPLi3gdViWDGLQ88xm3/2

-- Q1: Total revenue by city
SELECT city, 
       ROUND(SUM(total_revenue), 2) AS total_revenue,
       COUNT(*) AS total_orders
FROM retail_sales
GROUP BY city
ORDER BY total_revenue DESC;

-- Q2: Top 5 selling products by revenue
SELECT product_name,
       SUM(quantity) AS total_quantity_sold,
       ROUND(SUM(total_revenue), 2) AS total_revenue
FROM retail_sales
GROUP BY product_name
ORDER BY total_revenue DESC
LIMIT 5;

-- Q3: Monthly sales trend
SELECT TO_CHAR(order_date, 'YYYY-MM') AS month,
       COUNT(*) AS total_orders,
       ROUND(SUM(total_revenue), 2) AS monthly_revenue
FROM retail_sales
GROUP BY TO_CHAR(order_date, 'YYYY-MM')
ORDER BY month;

-- Q4: Average order value by city
SELECT city,
       ROUND(AVG(total_revenue), 2) AS avg_order_value,
       COUNT(*) AS num_orders
FROM retail_sales
GROUP BY city
ORDER BY avg_order_value DESC;

-- Q5: Orders above 5000 revenue
SELECT order_id, order_date, city, product_name, total_revenue
FROM retail_sales
WHERE total_revenue > 5000
ORDER BY total_revenue DESC;
