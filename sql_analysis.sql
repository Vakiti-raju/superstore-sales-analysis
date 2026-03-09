-- CREATING A DATABASE
CREATE DATABASE superstore_db;

-- USING A DATABASE 
USE superstore_db;

-- CREATE TABLE COLUMNS 
CREATE TABLE superstore_orders(
order_id VARCHAR(50),
order_date DATE,
ship_date DATE,
ship_mode VARCHAR(50),
customer_name VARCHAR(50),
segment VARCHAR(50),
state VARCHAR(50),
country VARCHAR(50),
market VARCHAR(50),
region VARCHAR(50),
product_id VARCHAR(50),
category VARCHAR(50),
sub_category VARCHAR(50),
product_name VARCHAR(255),
sales FLOAT,
quantity FLOAT,
discount FLOAT,
profit FLOAT,
shipping_cost FLOAT,
order_priority VARCHAR(20),
year int
);

-- TOTAL SALES
SELECT SUM(sales) AS total_sales 
FROM superstore_orders;

-- SALES BY CATEGORY 
SELECT category,
       sum(sales) AS total_sales 
FROM superstore_orders
GROUP BY category 
ORDER BY total_sales DESC;

-- PROFIT FOR REGION
SELECT region,
	   SUM(profit) AS total_profits
FROM superstore_orders
GROUP BY region
ORDER BY total_profits DESC;

-- TOP 10 PRODUCT BY SALES
SELECT product_name,
	   SUM(sales) AS total_sales
FROM superstore_orders
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 10;

-- DISCOUNT PROFIT ANALYSIS
SELECT discount,
       AVG(profit) 
FROM superstore_orders
GROUP BY discount 
ORDER BY discount;