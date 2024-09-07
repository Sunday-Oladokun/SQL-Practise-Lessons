-- DAY 4 - CRUD EXERCISES

-- TASK 1- CREATE DATABASE FOR STORING SHIRTS
CREATE DATABASE shirt_db;

-- USE THE DATABASE
USE shirt_db;

-- CREATE TABLE FOR HOLDING OUR SHIRTS DATA
CREATE TABLE shirts (
    shirt_id INT PRIMARY KEY AUTO_INCREMENT,
    article VARCHAR(20),
    color VARCHAR(20),
    shirt_size VARCHAR(4),
    last_worn INT
)
;

-- DESCRIBE OR SHOW DETAILS ABOUT TABLE
DESC shirts;

-- INSERT DATA INTO THE SHIRTS TABLE
INSERT INTO shirts(article, color, shirt_size, last_worn)
VALUES('t-shirt', 'white', 'S', 10),
('t-shirt', 'green', 'S', 200),
('polo shirt', 'black', 'M', 10),
('tank top', 'blue', 'S', 50),
('t-shirt', 'pink', 'S', 0),
('polo shirt', 'red', 'M', 5),
('tank top', 'white', 'S', 200),
('tank top', 'blue', 'M', 15)
;

-- ADD A NEW ROW OF DATA FOR SHIRT
INSERT INTO shirts(article, color, shirt_size, last_worn)
VALUES('polo shirt', 'purple', 'M', 50)
;

-- SELECT ALL SHIRTS OR VIEW THE TABLE CREATED
SELECT 
    *
FROM
    shirts;

-- SHOW TABLE WITH ONLY SHIRTS AND COLORS
SELECT 
    article, color
FROM
    shirts;

-- SHOW ALL DATA EXCEPT IDS
SELECT 
    article, color, shirt_size, last_worn
FROM
    shirts;
    
-- SHOW ALL SHIRTS WITH SIZE 'M'
SELECT 
    *
FROM
    shirts
WHERE
    shirt_size = 'M';
    
-- UPDATE ALL POLO SHIRTS TO SIZE LARGE
UPDATE shirts 
SET 
    shirt_size = 'L'
WHERE
    article = 'polo shirt'
;

-- UPDATE THE SHIRT LAST WORN 15 DAYS AGO TO ZERO
UPDATE shirts 
SET 
    last_worn = 0
WHERE
    last_worn = 15
;

-- UPDATE ALL WHITE SHIRTS TO SIZE OF XS AND COLORS TO OFF WHITE
UPDATE shirts 
SET 
    shirt_size = 'XS',
    color = 'off white'
WHERE
    color = 'white'
;

-- DELETE ALL SHIRTS LAST WORN 200 DAYS AGO
DELETE FROM shirts 
WHERE
    last_worn = 200;

-- DELETE ALL TANK TOPS
DELETE FROM shirts 
WHERE
    article = 'tank top';
    
-- DELETE ALL SHIRTS(EMPTY THE TABLE)
DELETE FROM shirts;

-- DELETE THE TABLE
DROP TABLE shirts;