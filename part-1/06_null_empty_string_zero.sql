-- "null" means unknown or missing value
-- "empty string" means known string value but it contains no characters
-- "zero" means actual numeric value of 0

DROP TABLE IF EXISTS basics.value_examples;

CREATE TABLE basics.value_examples (
    id SERIAL PRIMARY KEY,
    nickname TEXT,
    bio TEXT, 
    score INTEGER
);

INSERT INTO basics.value_examples (nickname,bio,score)
VALUES
(null,'learning postgreSQL',10),
('','empty nickname',20),
('testOne','',0),
('john',null,null);

--queries 

-- where nickname is null
SELECT * FROM basics.value_examples WHERE nickname IS NULL;

-- where nickname is empty string
SELECT * FROM basics.value_examples WHERE nickname = '';

-- where score is 0
SELECT * FROM basics.value_examples WHERE score = 0;

-- where nickname is not null
SELECT * FROM basics.value_examples where nickname IS NOT NULL;