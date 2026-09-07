-- to check and select the desired product which i want to update
SELECT name,category,price,stock 
FROM products
WHERE sku = 'IPH15-001';

-- updating the desired product which i selected
UPDATE products
SET price = 75000, stock = 10
WHERE sku = 'IPH15-001';

-- checking the updated product field sections
SELECT name,category,price,stock
FROM products
WHERE sku = 'IPH15-001';