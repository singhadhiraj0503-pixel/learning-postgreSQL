CREATE EXTENSION IF NOT EXITS pgcrypto;
DROP TABLE IF EXISTS products;
CREATE TABLE products (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name TEXT NOT NULL,
    category TEXT NOT NULL,
    price NUMERIC(10,2) NOT NULL CHECK (price>=0),
    stock INTEGER NOT NULL DEFAULT 0 CHECK (stock>=0),
    is_active BOOLEAN NOT NULL DEFAULT true,
    sku TEXT UNIQUE,
    description TEXT,
    created_at TIMESTAMP NOT NULL DEFAULT NOW()
);

INSERT INTO products (name,category,price,stock,is_active,sku,description)
VALUES  
('iPhone 15', 'Electronics', 69999.00, 25, true, 'IPH15-001',
 'Apple iPhone with advanced camera and performance'),

('Samsung Galaxy S24', 'Electronics', 74999.00, 18, true, 'SGS24-001',
 'Samsung flagship smartphone with AMOLED display'),

('Wireless Headphones', 'Audio', 2499.00, 50, true, 'WH-001',
 'Wireless headphones with noise cancellation'),

('Mechanical Keyboard', 'Computer Accessories', 4599.00, 30, true, 'KB-MECH-001',
 NULL),

('Gaming Mouse', 'Computer Accessories', 1999.00, 45, true, 'MOUSE-G-001',
 NULL),

('Laptop Backpack', 'Bags', 1599.00, 35, true, 'BAG-LAP-001',
 'Water resistant backpack designed for laptops'),

('Running Shoes', 'Footwear', 3299.00, 20, true, 'SHOE-RUN-001',
 'Lightweight running shoes for everyday training'),

('Coffee Mug', 'Home & Kitchen', 499.00, 100, true, 'MUG-001',
 'Ceramic coffee mug with a simple modern design'),

('Desk Lamp', 'Home & Office', 1299.00, 40, true, 'LAMP-001',
 'LED desk lamp with adjustable brightness'),

('USB-C Cable', 'Electronics', 699.00, 75, false, 'USB-C-001',
 'Durable USB-C charging and data cable');

--queries 
SELECT * FROM products