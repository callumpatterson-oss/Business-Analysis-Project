CREATE TABLE IF NOT EXISTS customers (
    customer_id INT,
    customer_name VARCHAR(100),
    email VARCHAR(255),
    country VARCHAR(50),
    city VARCHAR(100),
    signup_date DATE,
    customer_segment VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS categories (
    category_id INT,
    category_name VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS suppliers (
    supplier_id INT,
    supplier_name VARCHAR(100),
    country VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS products (
    product_id INT,
    product_name VARCHAR(100),
    category_id INT,
    supplier_id INT,
    unit_price NUMERIC(10,2)
);

CREATE TABLE IF NOT EXISTS orders (
    order_id INT,
    customer_id INT,
    order_date DATE,
    order_status VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS order_items (
    order_item_id INT,
    order_id INT,
    product_id INT,
    quantity INT,
    unit_price NUMERIC(10,2),
    discount_pct INT
);
