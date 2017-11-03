-- SQL Schema Definition for accounts

CREATE TABLE users (
  id            INTEGER PRIMARY KEY,
  email         VARCHAR NOT NULL,
  name          VARCHAR NOT NULL,
  nickname      VARCHAR,
  created       DATETIME DEFAULT now()::timestamptz(0),
  last_modified DATETIME ON UPDATE now()::timestamptz(0),
  disabled      DATETIME DEFAULT NULL,
);
