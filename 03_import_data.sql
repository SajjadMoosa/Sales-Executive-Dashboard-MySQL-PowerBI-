USE sales_executive_db;

LOAD DATA LOCAL INFILE 'C:/Users/YOUR_USERNAME/Desktop/sales_executive_dataset.csv'
INTO TABLE sales_data
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Order_ID, Order_Date, Customer_ID, Customer_Name, Customer_Segment,
 Region, Country, Sales_Channel, Category, Product, Quantity, Unit_Price,
 Discount, Sales, Cost, Profit, Payment_Method, Order_Status,
 Delivery_Days, Promised_Delivery_Days, On_Time_Delivery);

SELECT COUNT(*) AS Total_Rows FROM sales_data;
SELECT * FROM sales_data LIMIT 10;