-- to check and select the desired products which i want to update in multiple rows
SELECT name,category,price,stock,is_active
FROM products
WHERE category = 'Electronics';

-- updating the desired products which i selected
UPDATE products
SET stock=0, is_active=false
WHERE category='Electronics';

-- checking the updated product field sections
SELECT name,category,price,stock,is_active
FROM products
WHERE category='Electronics';