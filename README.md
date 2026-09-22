# Sales & Executive Dashboard — MySQL + Power BI

## Project Overview
An executive-level sales analytics project built with MySQL and Power BI. The dashboard tracks revenue, cost, profit, margin, orders, customers, products, regions, channels and delivery performance.

## Business Questions
- What are total sales, profit and profit margin?
- Which regions and categories generate the most revenue?
- Which products are the top performers?
- How are sales and profit changing month by month?
- Which sales channel performs best?
- What is the on-time delivery rate?
- Where should management focus to improve profitability?

## Tools
- MySQL 8
- SQL
- Power BI Desktop
- GitHub

## Dataset
The dataset contains 1,500 sales orders covering 2024–2025. It includes customer, product, region, channel, pricing, sales, cost, profit, order status and delivery fields.

## Dashboard Pages
1. Executive Overview
2. Sales & Profit Analysis
3. Product & Customer Analysis
4. Regional & Channel Performance
5. Operations & Delivery

## Key KPIs
- Total Sales
- Total Profit
- Profit Margin %
- Total Orders
- Total Customers
- Total Units
- Average Order Value
- On-Time Delivery %

## SQL Workflow
1. Create database
2. Create table
3. Import CSV
4. Validate row count and records
5. Run analysis queries
6. Create reporting view
7. Connect Power BI to MySQL

## Power BI Model
Use `vw_sales_executive` as the main table. Create a Date table and mark it as a date table.

## Suggested DAX
```DAX
Total Sales = SUM(vw_sales_executive[Sales])

Total Profit = SUM(vw_sales_executive[Profit])

Profit Margin % = DIVIDE([Total Profit], [Total Sales], 0)

Total Orders = DISTINCTCOUNT(vw_sales_executive[Order_ID])

Total Customers = DISTINCTCOUNT(vw_sales_executive[Customer_ID])

Total Units = SUM(vw_sales_executive[Quantity])

Average Order Value = DIVIDE([Total Sales], [Total Orders], 0)

On-Time Delivery % =
DIVIDE(
    CALCULATE(
        COUNTROWS(vw_sales_executive),
        vw_sales_executive[On_Time_Delivery] = "Yes"
    ),
    COUNTROWS(vw_sales_executive),
    0
)
```

## Business Insights
Use the dashboard to identify high-revenue regions, high-margin categories, low-performing products, monthly growth patterns, channel differences and delivery issues. Insights should be written from the actual dashboard results after refresh.

## Author
Sajjad Moosa

Data Analyst | Power BI | MySql | Looker Studio | Excel | Tableau | Python

Available for freelance projects & custom dashboard/reporting solutions.
sajjadmoosa9@gmail.com
