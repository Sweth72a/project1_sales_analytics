CREATE DATABASE superstore_db;
USE superstore_db;
CREATE TABLE superstore (
    Row_ID INT PRIMARY KEY,
    Order_ID VARCHAR(20),
    Order_Date DATE,
    Ship_Date DATE,
    Ship_Mode VARCHAR(50),
    Customer_ID VARCHAR(20),
    Customer_Name VARCHAR(100),
    Segment VARCHAR(50),
    Country VARCHAR(50),
    City VARCHAR(50),
    State VARCHAR(50),
    Postal_Code INT,
    Region VARCHAR(50),
    Product_ID VARCHAR(20),
    Category VARCHAR(50),
    Sub_Category VARCHAR(50),
    Product_Name VARCHAR(255),
    Sales DECIMAL(10,2)
);
SET foreign_key_checks = 0;
SET unique_checks = 0;

DROP TABLE superstore ;
CREATE TABLE superstore (
    Order_ID VARCHAR(50),
    Order_Date DATE,
    Ship_Date DATE,
    Ship_Mode VARCHAR(50),
    Customer_ID VARCHAR(50),
    Customer_Name VARCHAR(100),
    Segment VARCHAR(50),
    Country VARCHAR(50),
    City VARCHAR(50),
    State VARCHAR(50),
    Postal_Code VARCHAR(20),  
    Region VARCHAR(50),
    Product_ID VARCHAR(50),
    Category VARCHAR(50),
    Sub_Category VARCHAR(50),
    Product_Name TEXT,
    Sales DECIMAL(10,2),
    Quantity INT,
    Discount DECIMAL(5,2),
    Profit DECIMAL(10,2)
);
SELECT * FROM ss_ds LIMIT 20;
SELECT COUNT(*) AS total_rows FROM ss_ds;
SELECT Order_Date, Ship_Date FROM ss_ds LIMIT 5;
SELECT ROUND(SUM(Sales), 2) AS total_sales
FROM ss_ds;
SELECT 
    DATE_FORMAT(Order_Date, '%Y-%m') AS month,
    ROUND(SUM(Sales), 2) AS monthly_sales
FROM ss_ds
GROUP BY month
ORDER BY month;
SELECT 
    YEAR(Order_Date) AS year,
    ROUND(SUM(Sales), 2) AS yearly_sales
FROM superstore
GROUP BY year
ORDER BY year;
SELECT 
    Region,
    ROUND(SUM(Sales), 2) AS region_sales
FROM superstore
GROUP BY Region
ORDER BY region_sales DESC;
SELECT 
    Category,
    ROUND(SUM(Sales), 2) AS category_sales
FROM superstore
GROUP BY Category
ORDER BY category_sales DESC;
SELECT Category, Sales
FROM superstore
LIMIT 10;

SELECT 
    Sub_Category,
    ROUND(SUM(Sales), 2) AS sub_category_sales
FROM ss_ds
GROUP BY Sub_Category
ORDER BY sub_category_sales DESC;
SELECT 
    Customer_Name,
    ROUND(SUM(Sales), 2) AS customer_sales
FROM ss_ds
GROUP BY Customer_Name
ORDER BY customer_sales DESC
LIMIT 10;
SELECT Region, COUNT(*) 
FROM ss_ds
GROUP BY Region;




