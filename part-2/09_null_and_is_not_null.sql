-- "IS NULL" example :
SELECT id,name,description
FROM products
WHERE description IS NULL;

-- "IS NOT NULL" example
SELECT id,name,description
FROM products
WHERE description IS NOT NULL;