-- database => schema => table => rows 

-- "IF NOT EXISTS" is going to prevent an error if the schema is already created.
CREATE SCHEMA IF NOT EXISTS basics;

-- create an extension
CREATE EXTENSION IF NOT EXISTS pgcrypto;

-- query
SELECT schema_name
FROM information_schema.schemata
ORDER BY schema_name;