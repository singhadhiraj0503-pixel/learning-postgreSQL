-- foreign key is a column that points to the primary key of another table

-- "users.id" is the parent key
-- "posts.user_id" is the foreign key ( every post you create that must belong to an existing user ) 

SELECT id,name
FROM users;

SELECT id,user_id,title
FROM posts;