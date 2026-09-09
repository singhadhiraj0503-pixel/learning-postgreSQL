-- Aggregate Functions means it calculates one result from many rows 

-- COUNT() => count the number of rows
-- SUM() => total value
-- AVG() => average value
-- MIN() => smallest value
-- MAX() => largest/maximum value

-- count the total number of posts
SELECT 
    COUNT(*) AS total_posts
FROM posts;

-- count the total number of published posts
SELECT 
    COUNT(*) AS total_posts,
    COUNT(*) FILTER (WHERE status = 'published') AS published_posts
FROM posts;

-- sum of all the views of the posts table
SELECT 
    SUM(views) AS total_views
FROM posts;

-- avergae of all the views of the posts table
SELECT
    AVG(views) AS average_views
FROM posts;

-- display the minimum number of views from the posts table
SELECT 
    MIN(views) AS lowest_view
FROM posts;

-- display the hightest view from the posts table
SELECT 
    MAX(views) AS highest_view
FROM posts;