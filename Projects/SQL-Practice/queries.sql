-- Total sales by product
SELECT Product, SUM(Sales) as Total_Sales
FROM fmcg_sales
GROUP BY Product
ORDER BY Total_Sales DESC;

-- Top 5 customers
SELECT Customer, SUM(Sales) as Total_Spent
FROM fmcg_sales
GROUP BY Customer
ORDER BY Total_Spent DESC
LIMIT 5;
