SELECT
    CONCAT(author_fname, ' ', author_lname) AS 'full_name'
FROM books;


SELECT
    CONCAT_WS(' ', book_id, title, author_fname, author_lname) AS 'full_name'
FROM books;


SELECT SUBSTRING(title, 1, 10) FROM books;

SELECT CONCAT(SUBSTRING(title, 1, 10), '...') AS 'short_title' FROM books;



SELECT REPLACE(released_year, 20, '') AS 'released_year' FROM books;

INSERT INTO books
    (title, author_fname, author_lname, released_year, stock_quantity, pages)
    VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
           ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
           ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);
 
 
SELECT title FROM books;

SELECT author_fname FROM books;
SELECT DISTINCT author_fname FROM books;


SELECT DISTINCT author_fname, author_lname FROM books;


SELECT author_lname, title
FROM books ORDER BY 2;
 
SELECT author_fname, author_lname FROM books 
ORDER BY author_lname, author_fname;

 
SELECT title FROM books WHERE  title LIKE 'the';
 
SELECT title FROM books WHERE  title LIKE '%the';
 
SELECT title FROM books WHERE title LIKE '%the%';

SELECT title, stock_quantity FROM books WHERE stock_quantity LIKE '____';
 
SELECT title, stock_quantity FROM books WHERE stock_quantity LIKE '__';
 
(235)234-0987 LIKE '(___)___-____'
 
SELECT title FROM books;
 
SELECT title FROM books WHERE title LIKE '%\%%';
 
SELECT title FROM books WHERE title LIKE '%\_%';

SELECT title, author_lname FROM books WHERE author_lname LIKE '% %';

SELECT
    CONCAT(
        'MY FAVORITE AUTHOR IS ',
        UPPER(author_fname),
        ' ',
        UPPER(author_lname),
        '!'
    ) AS ShoutOut
FROM books ORDER BY author_lname;