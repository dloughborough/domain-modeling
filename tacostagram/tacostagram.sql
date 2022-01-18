-- Drops existing tables, so we start fresh with each
-- run of this script
-- e.g. DROP TABLE IF EXISTS ______;
DROP TABLE IF EXISTS photos;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS likes;
DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS followers;

-- CREATE TABLES

CREATE TABLE photos (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id INTEGER,
  time TEXT,
  filename TEXT
);

CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    username TEXT,
    first_name TEXT,
    last_name TEXT,
    location TEXT
);

CREATE TABLE likes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    photo_id INTEGER,
    user_id TEXT
);

CREATE TABLE comments (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    photo_id INTEGER,
    user_id INTEGER,
    comment TEXT
);

CREATE TABLE followers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id_follower TEXT,
    user_id_followed TEXT
);