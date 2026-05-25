-- Retail Analytics Schema
-- DB Fiddle Link: https://www.db-fiddle.com/f/f6KtPLi3gdViWDGLQ88xm3/2
-- Week 3 - Infotact Solutions Internship

DROP TABLE IF EXISTS retail_sales;

CREATE TABLE retail_sales (
    order_id VARCHAR(20) PRIMARY KEY,
    order_date DATE NOT NULL,
    product_name VARCHAR(100),
    city VARCHAR(50),
    quantity INTEGER,
    unit_price DECIMAL(10,2),
    total_revenue DECIMAL(12,2)
);

CREATE INDEX idx_order_date ON retail_sales(order_date);
CREATE INDEX idx_city ON retail_sales(city);

-- Test query
SELECT 'Table Ready' AS status;
