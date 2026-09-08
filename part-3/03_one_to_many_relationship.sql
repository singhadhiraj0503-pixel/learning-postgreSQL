-- one parent row can have many child rows 
-- one user can write many posts
-- but one post will always belong to one user only

-- users => parent table
-- posts => child table 

-- posts.user_id => user.id ( "user.id" is the original user id whereas posts.user_id stores that original user id inside the posts table )

-- example : show all posts with their authors.
SELECT 
    users.name AS author_name,
    posts.title AS post_title,
    posts.status
FROM users
INNER JOIN posts
    ON posts.user_id = users.id
ORDER BY users.name, posts.title;