-- Create a database named 'bookshop'
CREATE DATABASE bookshop;

-- SELECT DATABASE TO USE
USE bookshop;

-- Create a table named 'books' with columns for book details
CREATE TABLE books (
    book_id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(100),
    author_fname VARCHAR(100),
    author_lname VARCHAR(100),
    released_year INT,
    stock_quantity INT,
    pages INT,
    PRIMARY KEY (book_id)
);

-- Insert multiple rows of data into the 'books' table with details like title, author name, release year, stock, and page count
INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES
-- Inserting book details (Title, First Name, Last Name, Release Year, Stock Quantity, Pages)
('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
('Norse Mythology', 'Neil', 'Gaiman', 2016, 43, 304),
('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);

-- CONCAT FOR JOINING STRINGS
SELECT CONCAT('H', 'E', 'L', 'L', 'O');

-- CONCAT AUTHOR FIRST AND LAST NAMES
SELECT 
    CONCAT(author_fname, ' ', author_lname) AS author_name
FROM
    books;

-- CONCAT_WS - CONCAT WITH SEPARATE- ADDS A CHARACTER BETWEEN STRINGS
SELECT CONCAT_WS('-', 'Abegunde', 'Williams')

-- SUBSTRING - GETS A SMALLER STRING FROM A LARGE STRING(MORE LIKE 
SELECT SUBSTRING('Hello Word', 1, 4);

SELECT SUBSTRING('Hello Word', 7);

SELECT SUBSTRING('Hello Word', - 3);

SELECT SUBSTRING('Hello Word', - 3, 1);

-- SELECT DATA FROM THE TABLE USING SUBSTRING
SELECT 
    SUBSTRING(title, 1, 15) AS book_title
FROM
    books;

-- SUBSTR() ALSO WORKS- ITS THE ABBREVIATION

SELECT 
    SUBSTR(author_lname, 1, 1) AS initial_lname, author_lname
FROM
    books;

-- COMBINING CONCAT AND SUBSTRING- SELECT BOOK FIRST 10 BOOK TITLES AND CONCAT THEM WITH ...
SELECT 
    SUBSTRING(title, 1, 10), CONCAT(title, '...')
FROM
    books;-- THIS WILL RETURN TWO DIFFERENT COLUMNS

SELECT 
    CONCAT(SUBSTRING(title, 1, 10), '...') AS titles_abbreviated
FROM
    books;
    
-- SELECT AUTHOR INITIALS
SELECT 
    SUBSTR(author_fname, 1, 1) AS fname_initial,
    SUBSTR(author_lname, 1, 1) AS lname_initial
FROM
    books;

-- CONCAT AUTHOR INITIALS WITH . SEPARATING THEM
SELECT 
    CONCAT_WS('.',
            SUBSTR(author_fname, 1, 1),
            SUBSTR(author_lname, 1, 1)) AS author_initials
FROM
    books;
    
-- REPLACE - REPLACES CHARACTERS IN A STRING
SELECT REPLACE('Hello World', 'Hell', 'Bellot');

-- REPLACE SPACE IN TITLE OF EVERY BOOK WITH HYPHEN
SELECT 
    REPLACE(title, ' ', '-')
FROM
    books;

-- REVERSE - REVERSE CHARACTERS
SELECT REVERSE('Boys Night Out');

-- REVERSE AUTHOR NAMES AND CONCAT WITH NORMAL NAME
SELECT 
    CONCAT(author_fname, (REVERSE(author_fname)))
FROM
    books;

-- CHAR_LENGTH -- TELLS US THE LENGTH OF CHARACTERS(THIS IS DIFFERENT FROM LENGTH() WHICH RETURNS LENGTH IN BYTES)
SELECT CHAR_LENGTH('boy');

SELECT 
    CHAR_LENGTH(title) AS title_length, title
FROM
    books;

-- UPPER AND LOWER MAKE STRINGS CAPITALISED OR LOWER CASE, ALSO UCASE AND LCASE
SELECT UPPER('Upper Case');
SELECT LCASE('Lower Case');

-- SHOW ALL BOOK TITLES AS UPPER CASE AND LOWER CASE SIDE BY SIDE
SELECT 
    UPPER(title) AS title_upper, LCASE(title) AS title_lower
FROM
    books;


-- EXERCISE- WRITE EVERY BOOK TITLE THIS WAY- I LOVE TITLE !!!
SELECT 
    CONCAT(UPPER('I love '), UPPER(title), ' !!!')
FROM
    books;

-- INSERT CHARACTERS OR REPLACE
SELECT INSERT('Hello Bobby', 6, 0, ' There');
SELECT INSERT('Hello Bobby', 6, 6, ' There');-- THIS WILL REPLACE 6 CHARACTERS FORWARD

SELECT LEFT('Hello There', 2);
SELECT RIGHT('Hello There', 3);

-- REPEAT CHARACTERS
SELECT REPEAT('Hello! ', 5);

-- TRIM USED TO REMOVE TRAILING SPACES
SELECT TRIM('   Boys     ');

SELECT TRIM(LEADING '.' FROM '...Boys');

SELECT TRIM(TRAILING '.' FROM 'Boys...')

SELECT TRIM(BOTH '.' FROM '...Boys...');

