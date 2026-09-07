-- inserting temporatory data to the products table
INSERT INTO products (name,category,price,stock,is_active,sku,description)
VALUES ('Desk Lamp', 'Home', 900.00, 12, false, 'LMP001', 'LED desk lamp');

-- check where the new temporary data has been inserted or not
SELECT name,category,price,stock
FROM products
WHERE sku='LMP001';

-- deleting the temporary data which have been added to the table
DELETE FROM products
where sku='LMP001';

-- checking if the desired product has been deleted from the table or not
SELECT name,category,price,stock
FROM products
WHERE sku='LMP001';