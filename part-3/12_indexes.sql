-- "INDEX" helps postgres find rows faster

-- example 1 : /posts?status=published
SELECT id, title, status
FROM posts
WHERE status = 'published';

-- indexing method :
CREATE INDEX IF NOT EXISTS idx_posts_status
ON posts(status);

-- example 2 : a query find the published posts also it displays the most viewed post first
SELECT title, status, views
FROM posts
WHERE status = 'published'
ORDER BY views DESC;

-- index method : 
CREATE INDEX IF NOT EXISTS idx_posts_status_views
ON posts(status, views DESC);

-- example 3 : /users/:id/posts
SELECT title, status, views
FROM posts
where user_id = (
    SELECT id
    FROM users
    WHERE name = 'John'
);

-- index method : 
CREATE INDEX IF NOT EXISTS idx_posts_user_id
ON posts(user_id);