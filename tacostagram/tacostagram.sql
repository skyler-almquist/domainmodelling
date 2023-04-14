DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS likes;

DROP TABLE IF EXISTS followers;


CREATE TABLE users (
    id PRIMARY KEY AUTOINCREMENT,
    username TEXT,
    real_name TEXT,
    location TEXT
);
CREATE TABLE posts (
    id PRIMARY KEY AUTOINCREMENT,
    time_stamp TEXT, 
    image_url TEXT,
    users_id INTEGER
);
CREATE TABLE comments (
    id PRIMARY KEY AUTOINCREMENT,
    commentary TEXT,
    users_id INTEGER,
    posts_id INTEGER
);
CREATE TABLE likes (
    id PRIMARY KEY AUTOINCREMENT,
    users_id INTEGER,
    posts_id INTEGER
);

CREATE TABLE followers (
    id PRIMARY KEY AUTOINCREMENT,
    followed_users_id INTEGER,
    follower_users_id INTEGER
);