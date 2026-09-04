-- "LIKE" means case sensitive pattern match
-- "ILIKE" means case insensitive pattern match
-- "%" means any number of characters
-- "_" means exactly one character

-- the "%" after the 'Bags' means anything can come after it
SELECT name,category,price,stock
FROM products
WHERE category LIKE 'Bags%';

-- ILIKE example:
SELECT name,category,price,stock
FROM products
WHERE category ILIKE '%footwear%';

-- ILIKE example with conditions :
SELECT name,price,description
FROM products
WHERE name ILIKE '%iphone%'
    OR description ILIKE '%iphone%';