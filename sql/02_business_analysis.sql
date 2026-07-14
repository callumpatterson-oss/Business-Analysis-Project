# Average Order Revenue
SELECT DISTINCT order_id, ROUND((((100 - discount_pct ::NUMERIC) / 100) * unit_price),2) 
AS Total
FROM order_items
ORDER BY order_id

# Total Orders
SELECT COUNT(DISTINCT order_id) AS Total_Orders
FROM order_items

# Revenue By Country
SELECT
c.country,
ROUND(SUM(oi.quantity * oi.unit_price *(1-oi.discount_pct/100.0)),2) AS Total_Revenue
FROM customers c
JOIN orders o
USING(customer_id)
JOIN order_items oi
USING(order_id)
GROUP BY c.country
ORDER BY Total_Revenue DESC;

#Revenue By Category
SELECT c.category_name,
ROUND(SUM(oi.quantity * oi.unit_price *(1-oi.discount_pct/100.0)),2) AS Total_Revenue
FROM categories AS c
JOIN products p
USING(category_id)
JOIN order_items oi
USING(product_id)
GROUP BY c.category_name
ORDER BY Total_Revenue DESC;

# Top 20 Products
SELECT
p.product_name,
(ROUND(((100 - oi.discount_pct ::NUMERIC) / 100) * oi.unit_price * oi.quantity,2))  AS Total_Revenue 
FROM order_items AS oi
JOIN products AS p
Using(product_id)
ORDER BY total_revenue DESC
LIMIT 20

# Top Customers
SELECT
c.customer_name,
(ROUND(((100 - oi.discount_pct ::NUMERIC) / 100) * oi.unit_price * oi.quantity,2))  AS Total_Revenue 
FROM order_items AS oi
JOIN orders AS o
USING(order_id)
JOIN customers AS c
USING(customer_id)
ORDER BY total_revenue DESC
LIMIT 50

# Supplier Revenue
SELECT
s.supplier_name,
SUM(ROUND(((100 - oi.discount_pct ::NUMERIC) / 100) * oi.unit_price * oi.quantity,2))  AS Total_Revenue 
FROM order_items AS oi
JOIN products AS p
USING(product_id)
JOIN suppliers AS s
USING(supplier_id)
GROUP BY s.supplier_name

# Monthly Revenue
SELECT
DATE_TRUNC('month', o.order_date) AS Month,
SUM((ROUND(((100 - oi.discount_pct ::NUMERIC) / 100) * oi.unit_price * oi.quantity,2)))  AS Total_Revenue 
FROM order_items AS oi
JOIN orders AS o
USING(order_id)
GROUP BY Month

# Monthly Revenue Growth
WITH Monthly_rev AS (SELECT
DATE_TRUNC('month', o.order_date) AS Month,
SUM((ROUND(((100 - oi.discount_pct ::NUMERIC) / 100) * oi.unit_price * oi.quantity,2)))
AS Total_Revenue 
FROM order_items AS oi
JOIN orders AS o
USING(order_id)
GROUP BY Month
ORDER BY Month
),

Previous AS (SELECT Month,
Total_Revenue,
LAG(Total_Revenue) OVER(ORDER BY Month) AS Previous_Month 
FROM Monthly_rev)

SELECT Month,
Total_Revenue,
Previous_Month,
ROUND(((Total_Revenue - Previous_Month)/ Previous_Month)*100,2) AS Monthly_Growth_PCT
FROM Previous
ORDER BY Month
ORDER BY Total_Revenue DESC

# Customer Ranking
WITH Total_customers AS (SELECT
c.customer_name,
SUM((ROUND(((100 - oi.discount_pct ::NUMERIC) / 100) * oi.unit_price * oi.quantity,2)))
AS Total_Revenue
FROM order_items AS oi
JOIN orders AS o
USING(order_id)
JOIN customers AS c
USING(customer_id)
GROUP BY c.customer_name)

SELECT
RANK() OVER(ORDER BY Total_Revenue DESC) AS Rank,
customer_name,
Total_Revenue
FROM Total_customers

# Product Ranking
WITH Total_Rev_Products AS (SELECT
p.product_name,
SUM((ROUND(((100 - oi.discount_pct ::NUMERIC) / 100) * oi.unit_price * oi.quantity,2)))  AS Total_Revenue
FROM order_items AS oi
JOIN products AS p
USING(product_id)
GROUP BY (p.product_name)
)

SELECT
RANK() OVER(ORDER BY Total_Revenue DESC) AS Rank,
product_name,
Total_Revenue
FROM Total_Rev_Products





