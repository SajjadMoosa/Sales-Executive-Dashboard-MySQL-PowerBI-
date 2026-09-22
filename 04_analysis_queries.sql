USE sales_executive_db;

-- Executive KPIs
SELECT
    SUM(Sales) AS Total_Sales,
    SUM(Cost) AS Total_Cost,
    SUM(Profit) AS Total_Profit,
    ROUND(SUM(Profit)/NULLIF(SUM(Sales),0)*100,2) AS Profit_Margin_Percent,
    COUNT(DISTINCT Order_ID) AS Total_Orders,
    COUNT(DISTINCT Customer_ID) AS Total_Customers,
    SUM(Quantity) AS Total_Units
FROM sales_data
WHERE Order_Status <> 'Cancelled';

-- Regional performance
SELECT Region, SUM(Sales) AS Sales, SUM(Profit) AS Profit,
       ROUND(SUM(Profit)/NULLIF(SUM(Sales),0)*100,2) AS Margin_Percent
FROM sales_data
WHERE Order_Status <> 'Cancelled'
GROUP BY Region
ORDER BY Sales DESC;

-- Category performance
SELECT Category, SUM(Sales) AS Sales, SUM(Profit) AS Profit,
       SUM(Quantity) AS Units
FROM sales_data
WHERE Order_Status <> 'Cancelled'
GROUP BY Category
ORDER BY Sales DESC;

-- Monthly trend
SELECT DATE_FORMAT(Order_Date,'%Y-%m') AS Month,
       SUM(Sales) AS Sales, SUM(Profit) AS Profit
FROM sales_data
WHERE Order_Status <> 'Cancelled'
GROUP BY DATE_FORMAT(Order_Date,'%Y-%m')
ORDER BY Month;

-- Top 10 products
SELECT Product, SUM(Sales) AS Sales, SUM(Profit) AS Profit,
       SUM(Quantity) AS Units
FROM sales_data
WHERE Order_Status <> 'Cancelled'
GROUP BY Product
ORDER BY Sales DESC
LIMIT 10;

-- Delivery performance
SELECT On_Time_Delivery, COUNT(*) AS Orders
FROM sales_data
WHERE Order_Status NOT IN ('Cancelled','Returned')
GROUP BY On_Time_Delivery;