CREATE EXTENSION IF NOT EXISTS pgcrypto;
DROP TABLE IF EXISTS post_tags;
DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS tags;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name TEXT NOT NULL
);

CREATE TABLE posts (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL REFERENCES users(id),
    title TEXT NOT NULL,
    status TEXT NOT NULL DEFAULT 'draft'
        CHECK (status IN ('draft','published')),
    views INTEGER NOT NULL DEFAULT 0 CHECK (views>=0)
);

CREATE TABLE comments (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    post_id UUID NOT NULL REFERENCES posts(id),
    body TEXT NOT NULL
);

CREATE TABLE tags (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name TEXT NOT NULL UNIQUE
);

CREATE TABLE post_tags (
    post_id UUID NOT NULL REFERENCES posts(id),
    tag_id UUID NOT NULL REFERENCES tags(id),

    -- created composite primary key
    PRIMARY KEY(post_id,tag_id)
);

INSERT INTO users (name)
VALUES 
    ('John'),('Maverick');

INSERT INTO posts (user_id,title,status,views)
VALUES
    (
        (SELECT id FROM users WHERE name = 'John'),
        'Learning postgreSQL',
        'published',
        120
    ),
    (
        (SELECT id FROM users WHERE name = 'John'),
        'Understanding SQL joins',
        'draft',
        50
    ),
    (
        (SELECT id FROM users WHERE name = 'Maverick'),
        'Getting started with backend development',
        'published',
        100
    );

INSERT INTO comments (post_id,body)
VALUES 
    (
        (SELECT id FROM posts where title = 'Learning postgreSQL'),
        'Great post! I learned something new.'
    ),
    (
        (SELECT id FROM posts WHERE title = 'Getting started with backend development'),
        'This is really helpful. Thanks for sharing!'
    );

INSERT INTO tags (name)
VALUES
    ('sql'),('backend');

INSERT INTO post_tags (post_id,tag_id)
VALUES
    (
    (SELECT id FROM posts WHERE title = 'Learning postgreSQL'),
    (SELECT id FROM tags WHERE name = 'sql')
),
(
    (SELECT id FROM posts WHERE title = 'Understanding SQL joins'),
    (SELECT id FROM tags WHERE name = 'sql')
),
(
    (SELECT id FROM posts WHERE title = 'Getting started with backend development'),
    (SELECT id FROM tags WHERE name = 'backend')
);
