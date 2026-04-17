CREATE DATABASE sales_project;
USE sales_project;
CREATE TABLE sales_data (
    Order_ID VARCHAR(20),
    Order_Date DATE,
    Region VARCHAR(20),
    Category VARCHAR(50),
    Sub_Category VARCHAR(50),
    Sales INT,
    Profit INT,
    Profit_Status VARCHAR(10)
);
SELECT SUM(Sales) AS Total_Sales FROM sales_data;
SELECT Region, SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY Region;
SELECT Category, SUM(Profit) AS Total_Profit
FROM sales_data
GROUP BY Category;
SELECT Order_ID, Sales
FROM sales_data
ORDER BY Sales DESC
LIMIT 5;
SELECT 
    MONTH(Order_Date) AS Month,
    SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY Month
ORDER BY Month;
SELECT Profit_Status, COUNT(*) AS Count
FROM sales_data
GROUP BY Profit_Status;