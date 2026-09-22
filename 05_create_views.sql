USE sales_executive_db;

CREATE OR REPLACE VIEW vw_sales_executive AS
SELECT *,
       YEAR(Order_Date) AS Order_Year,
       MONTH(Order_Date) AS Order_Month,
       DATE_FORMAT(Order_Date,'%Y-%m') AS Year_Month,
       ROUND(Profit / NULLIF(Sales,0) * 100, 2) AS Profit_Margin
FROM sales_data
WHERE Order_Status <> 'Cancelled';