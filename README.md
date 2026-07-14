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
<!--
 ```diff
- text in red
+ text in green
! text in orange
# text in gray
@@ text in purple (and bold)@@
```
--!>
