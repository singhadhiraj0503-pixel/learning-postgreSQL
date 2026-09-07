-- "RETURNING" usually returns back the rows immediately after insert, update and delete

-- RETURNING after insert :
INSERT INTO products (name,category,price,stock,is_active,sku,description)
VALUES ('Webcam','Electronics',1000.00,7,true,'WEB-CAM-001','Webcam dummy description')
RETURNING id,name,category,price,stock,created_at;

-- RETURNING after update :
UPDATE products
SET stock = stock + 10
WHERE sku = 'WEB-CAM-001'
RETURNING id, name, stock;

-- RETURNING after delete :
DELETE FROM products
WHERE sku='WEB-CAM-001'
RETURNING id,name,sku;

-- checking if the product item is deleted or not from the table
SELECT name,sku
FROM products
WHERE sku='WEB-CAM-001';