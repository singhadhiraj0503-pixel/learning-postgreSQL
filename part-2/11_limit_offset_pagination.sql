-- "LIMIT" means how many rows you want to return
-- "OFFSET" means how many rows we want to skip

-- LIMIT example :
SELECT name,category,price,stock
FROM products
ORDER BY name ASC
LIMIT 5;

-- OFFSET example :
SELECT name,category,price,stock
FROM products
ORDER BY name ASC
LIMIT 5 OFFSET 0;

SELECT name,category,price,stock
FROM products
ORDER BY name ASC
LIMIT 5 OFFSET 5;

SELECT name,category,price,stock
FROM products
ORDER BY name ASC
LIMIT 5 OFFSET 10;

-- OFFSET and PAGINATION works : (page - 1) * limit
-- (2 - 1) * limit
-- (3 - 1) * limit