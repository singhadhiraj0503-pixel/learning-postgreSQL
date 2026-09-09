-- multiple sql statement run as one safe unit 

-- placing an order 
-- reduce stock of that product 
-- creating payment records 
-- transferring money 
-- creating user records with related profile data

BEGIN;

UPDATE posts
SET status = 'published'
WHERE title ='Understanding SQL joins'
    AND status='published';

UPDATE posts
SET views = views + 50
WHERE title='Understanding SQL joins';

SELECT title, status, views
FROM posts
WHERE title='Understanding SQL joins';

COMMIT; 