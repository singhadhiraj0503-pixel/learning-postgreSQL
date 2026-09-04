DROP TABLE IF EXISTS basics.products_basic;

CREATE TABLE basics.products_basic (
    id SERIAL PRIMARY KEY,

    -- "VARCHAR" means string of max lenght 100 characters
    name VARCHAR(100) NOT NULL,
    description TEXT,
    stock INTEGER DEFAULT 0,

    -- "BIGINT" means store larger whole number than INTEGER
    total_views BIGINT DEFAULT 0,
    price NUMERIC(10,2),
    is_active BOOLEAN DEFAULT true
);

--queries 
INSERT INTO basics.products_basic (name,description,stock,total_views,price,is_active)
VALUES
    (
        'product 1',
        'product description',
        100,
        1200,
        2455.65,
        true
    );

SELECT * FROM basics.products_basic;

SELECT id,name,price,stock,is_active
FROM basics.products_basic
WHERE is_active;