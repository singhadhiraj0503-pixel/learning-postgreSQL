-- "IN" means value must match one item from the list
-- "NOT IN" means value must not match any item from the list
-- "BETWEEN" means value must be inside a range

-- "IN" example :
SELECT name,category,price,stock
FROM products
WHERE category IN ('Electronics','Keyboard');

-- "NOT IN" example :
SELECT name,category,price,stock
FROM products
WHERE category NOT IN ('Electronics','Keyboard');

-- "BETWEEN" example :
SELECT name,category,price,stock
FROM products
WHERE price BETWEEN 2000 AND 30000;

-- combination example :
SELECT name,category,price,stock
FROM products 
WHERE category IN ('Electronics','Keyboard')
    AND price BETWEEN 1000 AND 70000;
