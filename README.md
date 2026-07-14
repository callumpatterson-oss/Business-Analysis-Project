<h1>E-Commerce Sales Analytics</h1>

<h2>Description</h2>
Developed an end-to-end e-commerce sales analysis project using PostgreSQL, Excel, and Power BI to analyse customer, product, and sales performance. Applied advanced SQL techniques including JOINs, subqueries, Common Table Expressions (CTEs), window functions, and aggregate functions to create analytical datasets, which were then explored using Excel Pivot Tables and visualised in an interactive Power BI dashboard. This project demonstrates the complete data analytics workflow from data preparation and analysis to business reporting and data visualisation.
<br />


<h2>Languages and Utilities Used</h2>

- <b>SQL</b> 
- <b>Excel</b>
- <b>PowerBi</b>

## Database

The project uses a relational PostgreSQL database built from six realistic CSV datasets created by AI that model and e-commerce bussiness .

The original datasets are located in the `/data` folder of this repository.

| Table | Description |
|-------|-------------|
| Customers | Customer information including location and segment |
| Orders | Order details including customer and order date |
| Order Items | Individual products purchased within each order |
| Products | Product information including category and supplier |
| Categories | Product category lookup table |
| Suppliers | Supplier information |

The tables are linked using primary and foreign keys to support relational analysis through SQL JOINs.

## SQL Analysis

The analysis was performed in PostgreSQL to transform raw transactional data into business-ready datasets. Multiple SQL techniques were used to answer key business questions and generate analytical outputs for Excel and Power BI dashboards.

### SQL Techniques Demonstrated

- INNER JOINs across multiple relational tables
- Common Table Expressions (CTEs)
- Subqueries
- Window Functions (`LAG()`, `RANK()`)
- Aggregate Functions (`SUM()`, `COUNT()`, `AVG()`)
- Date Functions (`DATE_TRUNC()`)
- GROUP BY and ORDER BY
- Revenue calculations and percentage growth analysis

### Business Questions Answered

#### Total Revenue
Calculated total sales revenue after applying product discounts.

#### Monthly Revenue Trend
Analysed revenue over time to identify long-term sales trends.

#### Monthly Revenue Growth
Used the `LAG()` window function to calculate month-over-month revenue growth percentages.

<img width="784" height="420" alt="Screenshot 2026-07-14 at 14 26 29" src="https://github.com/user-attachments/assets/e2183b35-b277-44b2-ad60-31acff173d2e" />

#### Revenue by Product Category
Identified the highest-performing product categories by total revenue.

#### Revenue by Country
Compared sales performance across different countries to identify key markets.

#### Top Customers

<img width="798" height="321" alt="Screenshot 2026-07-14 at 13 45 55" src="https://github.com/user-attachments/assets/18262a85-be7a-4474-94b6-dd4a6b1de321" />

Ranks customers by total revenue using joins, aggregation and the `RANK()` window function.

#### Top Products
Identified the highest-selling products based on total revenue.

#### Supplier Performance
Calculated supplier revenue contributions to determine which suppliers generated the highest sales.

All SQL Queries can be found in SQL/business_analysis.sql.

## Excel Analysis

The analytical datasets generated in PostgreSQL were exported to Microsoft Excel for further analysis and reporting. Pivot Tables were used to summarise large volumes of sales data, while Pivot Charts were created to highlight key business trends and validate the SQL analysis before developing the final Power BI dashboard.

### Excel Techniques Demonstrated

- Pivot Tables

<img width="1439" height="241" alt="Screenshot 2026-07-14 at 14 30 40" src="https://github.com/user-attachments/assets/116b9592-10cd-4af0-be33-1d417043d5fb" />

- Pivot Charts
- Data Sorting and Filtering
- Revenue Summarisation
- Trend Analysis
- KPI Reporting

### Reports Created

- Monthly Revenue Trend
- Revenue by Country
- Revenue by Product Category
- Top 10 Customers by Revenue
- Top 10 Products by Revenue

The Excel analysis provided a clear summary of business performance and acted as an intermediate reporting stage before building the interactive Power BI dashboard.

### Excel Dashboard

<img width="423" height="487" alt="Screenshot 2026-07-14 at 14 32 47" src="https://github.com/user-attachments/assets/c0b0638f-3e4c-424d-81ca-37adf1f0341a" />

The dashboard combines Pivot Tables, Pivot Charts and KPI summaries to provide a high-level overview of sales performance across time, products and geographic regions.

## Business Inteligence Dashboard

The analytical datasets created in PostgreSQL were imported into Power BI to develop an interactive business intelligence dashboard. The dashboard uses KPI cards, charts and filters to provide insights into sales performance, customer behaviour and product performance, allowing users to explore trends and compare results across different dimensions.

### Power BI Features

- KPI Cards
- Interactive Filters and Slicers
- Line Charts
- Bar Charts
- Donut Charts
- Data Modelling
- DAX Measures
- Drill-through Analysis

### Dashboard Insights

- Total Revenue
- Monthly Revenue Growth
- Revenue Trend Over Time
- Revenue by Product Category
- Revenue by Country
- Top Customers
- Top Products
- Supplier Performance

The dashboard was designed to provide stakeholders with an interactive overview of business performance, enabling data-driven decision-making through clear and dynamic visualisations.

## Business Intelligence Dashboard

The dashboard was built in Power BI using the analytical datasets created in PostgreSQL. It provides an interactive overview of revenue, customer and product performance through KPI cards, trend analysis and dynamic filtering.

---

### Dashboard 1 – Executive Overview

The Executive Dashboard provides a high-level summary of business performance, including total revenue, monthly revenue growth, top-performing category and country, alongside key revenue trends and product performance.

<img width="1313" height="739" alt="image" src="https://github.com/user-attachments/assets/ca7c875d-f1f4-46ee-85e5-5bea7da7918e" />

---

### Dashboard 2 – Customer Analysis

The Customer Dashboard focuses on customer behaviour and purchasing patterns. It highlights the highest-value customers, customer segmentation and revenue contribution by customer group.

<img width="1304" height="744" alt="image" src="https://github.com/user-attachments/assets/e97c5258-2f36-41bd-9590-573bf9ecfda7" />

---

### Dashboard 3 – Product Analysis

The Product Dashboard analyses product and supplier performance, identifying the highest-performing products, categories and suppliers to support inventory and sales decisions.

<img width="1307" height="739" alt="image" src="https://github.com/user-attachments/assets/05d3e1d0-3932-48f7-94b5-d56cd691ee14" />

<!--
 ```diff
- text in red
+ text in green
! text in orange
# text in gray
@@ text in purple (and bold)@@
```
--!>
