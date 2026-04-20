CREATE TABLE superstore_sales (
    row_id INTEGER NOT NULL,
    order_id VARCHAR(50) NOT NULL,
    order_date DATE NOT NULL,
    ship_date DATE NOT NULL,
    ship_mode VARCHAR(50) NOT NULL,
    customer_id VARCHAR(50) NOT NULL,
    customer_name VARCHAR(100) NOT NULL,
    segment VARCHAR(50) NOT NULL,
    country_region VARCHAR(100) NOT NULL,
    city VARCHAR(100) NOT NULL,
    state_province VARCHAR(100) NOT NULL,
    postal_code VARCHAR(20),
    region VARCHAR(50) NOT NULL,
    product_id VARCHAR(50) NOT NULL,
    category VARCHAR(50) NOT NULL,
    sub_category VARCHAR(50) NOT NULL,
    product_name TEXT NOT NULL,
    sales NUMERIC(10,4) NOT NULL,
    quantity INTEGER NOT NULL,
    discount NUMERIC(5,4) NOT NULL,
    profit NUMERIC(10,4) NOT NULL
);

SELECT * FROM superstore_sales;

-- 2.1 Overall KPIs
SELECT 
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    SUM(profit)/NULLIF(SUM(sales),0) AS profit_margin,
    AVG(discount) AS avg_discount,
    SUM(quantity) AS total_quantity
FROM superstore_sales;

-- 2.2 Sales & Profit by Region
SELECT 
    region,
    SUM(sales) AS sales,
    SUM(profit) AS profit
FROM superstore_sales
GROUP BY region
ORDER BY sales DESC;

-- 2.3 Sales by Category
SELECT 
    category,
    SUM(sales) AS sales
FROM superstore_sales
GROUP BY category
ORDER BY sales DESC;

-- 2.4 Monthly Sales Trend
SELECT 
    TO_CHAR(order_date, 'YYYY-MM') AS month,
    SUM(sales) AS monthly_sales
FROM superstore_sales
GROUP BY month
ORDER BY month;

-- 2.5 Top 10 Products by Profit
SELECT 
    product_name,
    SUM(profit) AS total_profit
FROM superstore_sales
GROUP BY product_name
ORDER BY total_profit DESC
LIMIT 10;

-- 2.6 Profit by Customer Segment
SELECT 
    segment,
    SUM(profit) AS profit
FROM superstore_sales
GROUP BY segment
ORDER BY profit DESC;

-- 2.7 Sales & Profit by Sub‑Category (optional drill‑down)
SELECT 
    sub_category,
    SUM(sales) AS sales,
    SUM(profit) AS profit
FROM superstore_sales
GROUP BY sub_category
ORDER BY profit DESC;

