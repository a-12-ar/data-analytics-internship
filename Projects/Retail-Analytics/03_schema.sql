-- 03_schema.sql
CREATE DATABASE IF NOT EXISTS retail_db;
USE retail_db;

DROP TABLE IF EXISTS fmcg_sales;

CREATE TABLE fmcg_sales (
    id INT AUTO_INCREMENT PRIMARY KEY,
    Product VARCHAR(255) NOT NULL,
    Sales_Quantity INT,
    Revenue DECIMAL(15,4),
    Profit_Margin DECIMAL(10,8)
);
