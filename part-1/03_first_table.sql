DROP TABLE IF EXISTS basics.students;

CREATE TABLE basics.students (

    -- create an auto incrementing integer
    -- "PRIMARY KEY" simply means this column uniquely identifies each row
    id SERIAL PRIMARY KEY,

    -- text -> string data
    -- "NOT NULL" means this column is required
    -- postgres is going to reject if this "name" value is not present
    name TEXT NOT NULL,

    -- "UNIQUE" means no 2 student is going to have same email
    email TEXT NOT NULL UNIQUE,

    age INTEGER CHECK (age>=18),

    -- "TIMESTAMP" stores date and time format
    -- "DEFAULT" means if you dont give any value it will take by default
    created_at TIMESTAMP DEFAULT NOW()
);

-- insert some data

INSERT INTO basics.students (name,email,age)
VALUES 
    ('testOne','test@test.com',18),
    ('testTwo','test2@test.com',19);