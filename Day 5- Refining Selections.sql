-- DISPLAY WORKING DATABASE
SELECT DATABASE();

-- SHOW THE books table created from earlier
SELECT 
    *
FROM
    books;

-- INSERT MORE VALUES INTO THE books table
INSERT INTO books
    (title, author_fname, author_lname, released_year, stock_quantity, pages)
    VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
           ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
           ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);
           
-- SELECT DISTINCT RESULTS- TO ELIMINATE DUPLICATES-- DISTINCT COMES BEFORE ALL COLUMNS BEING CALLED

SELECT DISTINCT
    author_lname
FROM
    books;

-- DISTINCT RELEASED YEAR
SELECT DISTINCT
    released_year
FROM
    books;

-- DISTINCT AUTHOR FULL NAMES
SELECT DISTINCT
    CONCAT(author_lname, ' ', author_fname)
FROM
    books;
    
-- SECOND WAY
SELECT DISTINCT
    author_lname, author_fname
FROM
    books;

-- ORDER BY -- FOR ORDERING OUR DATA -- IT COMES AFTER SELECT AND IT ASCENDS BY DEFAULT

SELECT 
    book_id, author_lname, author_fname
FROM
    books
ORDER BY author_lname;

-- DESC
SELECT 
    book_id, author_lname, author_fname
FROM
    books
ORDER BY author_lname DESC;

-- SELECT TITLES AND PAGES, SORT BY PAGES
SELECT 
    title, pages
FROM
    books
ORDER BY pages DESC;

-- SORT BY RELEASED YEAR
SELECT 
    title, pages
FROM
    books
ORDER BY released_year DESC;

-- FROM THE LIST OF COLUMNS BEING SELECTED, YOU CAN USE SHORTHAND TO ORDER BY A TITLE(THE NUMERICAL POSITION)
-- 2 MEANS ORDER BY pages
SELECT 
    title, pages
FROM
    books
ORDER BY 2 DESC;

-- SORT BY MUTIPLE COLUMNS
SELECT 
    author_lname, released_year, title
FROM
    books
ORDER BY author_lname , released_year;

-- YOU CAN SORT BY VALUES/COLUMNS NOT IN THE DATABASE
SELECT 
    CONCAT(author_lname, ' ', author_fname) AS author
FROM
    books
ORDER BY author;

-- LIMIT FOLLOWED BY A NUMBER -- LIMITS THE RESULTS WE GET
SELECT 
    author_lname, released_year, title
FROM
    books
ORDER BY author_lname , released_year DESC
LIMIT 5;

-- YOU CAN SPECIFY WHERE SELECTION SHOULD BEGIN FROM(START FROM SECOND ROW)
SELECT 
    author_lname, released_year, title
FROM
    books
ORDER BY author_lname , released_year DESC
LIMIT 2 , 5;
