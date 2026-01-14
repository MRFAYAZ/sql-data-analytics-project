-- Find Total Sales
SELECT
SUM(sales_amount) AS total_sales 
FROM gold.fact_sales

-- Find how many items are sold
SELECT
SUM(quantity) AS total_quantity 
FROM gold.fact_sales

-- find the average selling price
SELECT 
AVG(price) AS avg_price 
FROM gold.fact_sales

-- Find the total number of orders
SELECT 
COUNT(order_number) AS total_orders 
FROM gold.fact_sales

SELECT
COUNT(DISTINCT order_number) AS total_orders
FROM gold.fact_Sales

-- Find the total number of products
SELECT
COUNT(product_name) AS total_products
FROM gold.dim_products

SELECT
COUNT(DISTINCT product_name) AS total_products 
FROM gold.dim_products

-- Find the total number of customers
SELECT
COUNT(customer_key) AS total_customers
FROM gold.dim_customers

SELECT
COUNT(DISTINCT customer_key) AS total_customers
FROM gold.dim_customers

-- Find the total number od customers that has placed an order
SELECT
COUNT(DISTINCT customer_key) AS total_customers 
FROM gold.fact_sales

-- Generate a report that shows all key metrics of the business

SELECT 'Total Sales' as measure_name, SUM(sales_amount) AS measure_value FROM gold.fact_sales
UNION ALL
SELECT 'Total Quantity', SUM(quantity) FROM gold.fact_sales
UNION ALL
SELECT 'Average Price', AVG(price) FROM gold.fact_sales
UNION ALL
SELECT 'Total No.of Orders', COUNT(DISTINCT order_number) FROM gold.fact_sales
UNION ALL
SELECT 'Total No.of Products', COUNT(product_name) FROM gold.dim_products
UNION ALL
SELECT 'Total No.of Customers', COUNT(customer_key) FROM gold.fact_sales

