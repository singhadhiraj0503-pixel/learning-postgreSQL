-- "AND" means every condition must be true
-- "OR" means atleast one condition must be true
-- "NOT" means reverse/inverse a condition or an output

-- products where it is electronics and the price is greater than 1000.

SELECT name, category, price, stock
FROM products
WHERE category = 'Electronics'
    AND price > 1000;

-- products where category is electronics or keyboard

SELECT name,category,price,stock
FROM products
WHERE category='Electronics'
    OR category='Keyboard';

-- products where the category is not electronics

SELECT name,category,price,stock
FROM products
WHERE NOT category='Electronics';

-- complex condition example : 1

SELECT name,category,price,stock
FROM products
WHERE (category='Electronics' OR category='Keyboard')
    AND stock>10;

-- complex condition example : 2

SELECT name,category,price,stock,is_active
FROM products
WHERE is_active = true
    AND( price > 1000 OR stock > 10 );