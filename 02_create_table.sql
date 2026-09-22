USE sales_executive_db;

DROP TABLE IF EXISTS sales_data;

CREATE TABLE sales_data (
    Order_ID VARCHAR(20) PRIMARY KEY,
    Order_Date DATE NOT NULL,
    Customer_ID VARCHAR(20),
    Customer_Name VARCHAR(100),
    Customer_Segment VARCHAR(50),
    Region VARCHAR(50),
    Country VARCHAR(50),
    Sales_Channel VARCHAR(50),
    Category VARCHAR(50),
    Product VARCHAR(100),
    Quantity INT,
    Unit_Price DECIMAL(12,2),
    Discount DECIMAL(5,2),
    Sales DECIMAL(14,2),
    Cost DECIMAL(14,2),
    Profit DECIMAL(14,2),
    Payment_Method VARCHAR(50),
    Order_Status VARCHAR(30),
    Delivery_Days INT,
    Promised_Delivery_Days INT,
    On_Time_Delivery VARCHAR(5)
);