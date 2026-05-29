-- 04_business_queries.sql
USE retail_db;

-- Q1: Total Revenue and Total Units Sold
SELECT 
    ROUND(SUM(Revenue), 2) AS total_revenue,
    SUM(Sales_Quantity) AS total_units_sold,
    COUNT(Product) AS total_products
FROM fmcg_sales;

-- Q2: Top 5 Products by Revenue
SELECT 
    Product,
    ROUND(SUM(Revenue), 2) AS total_revenue,
    SUM(Sales_Quantity) AS units_sold
FROM fmcg_sales
GROUP BY Product
ORDER BY total_revenue DESC
LIMIT 5;

-- Q3: Top 5 Products by Quantity Sold
SELECT 
    Product,
    SUM(Sales_Quantity) AS total_quantity
FROM fmcg_sales
GROUP BY Product
ORDER BY total_quantity DESC
LIMIT 5;

-- Q4: Products with Highest Profit Margin
SELECT 
    Product,
    ROUND(AVG(Profit_Margin) * 100, 2) AS avg_profit_margin_pct,
    ROUND(SUM(Revenue), 2) AS total_revenue
FROM fmcg_sales
GROUP BY Product
ORDER BY avg_profit_margin_pct DESC
LIMIT 5;

-- Q5: Revenue vs Profit Analysis
SELECT 
    Product,
    ROUND(SUM(Revenue), 2) AS total_revenue,
    ROUND(SUM(Revenue * Profit_Margin), 2) AS total_profit,
    ROUND(AVG(Profit_Margin) * 100, 2) AS profit_margin_pct
FROM fmcg_sales
GROUP BY Product
ORDER BY total_profit DESC;
