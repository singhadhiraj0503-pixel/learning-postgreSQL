INSERT INTO products (name,category,price,stock,is_active,sku,description)
VALUES
( 'Red Mechanical Keyboard', 'Keyboard', 2800.00, 50, true, 'RED-MECH-001', 'Linear tactile switches mechanical keyboard with RGB.' ),
( 'Blue Mechanical Keyboard', 'Keyboard', 2000.00, 20, true, 'BLUE-MECH-001', 'Loud and very tactile switches mechanical keyboard with RGB.' ),
( 'Brown Mechanical Keyboard', 'Keyboard', 2400.00, 8, true, 'BROWN-MECH-001', 'Linear and smooth tactile switches mechanical keyboard with RGB.' );

-- queries 

SELECT name, category, price, stock, sku
FROM products
WHERE sku IN ('RED-MECH-001','BLUE-MECH-001','BROWN-MECH-001');
