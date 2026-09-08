-- "LEFT JOIN" keeps all the rows from the left tables

-- if the right table has matching data, postgreSQL includes that, if it does not have any matching data then it will return null

-- "posts" table => left table
-- "comments" table => right table

-- because not every post is going to have comments, some posts will have 100 comments and some will have 0.

SELECT 
    posts.title AS post_title,
    comments.body AS comment_body
FROM posts
LEFT JOIN comments
    ON posts.id = comments.post_id
ORDER BY posts.title; 