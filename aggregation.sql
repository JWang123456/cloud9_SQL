SELECT COUNT(DISTINCT author_fname) FROM books;

SELECT COUNT(DISTINCT author_fname, author_lname) FROM books;

SELECT COUNT(*) FROM books WHERE title LIKE '%the%';

SELECT CONCAT('IN ', released_year, ' ', COUNT(*), ' book(s) released') AS books FROM books GROUP BY released_year;

SELECT title, pages FROM books 
WHERE pages = (SELECT Min(pages) FROM books);

SELECT CONCAT(author_fname, ' ', author_lname) AS author, 
        Max(pages) AS logest_book 
FROM books
GROUP BY author_fname, author_lname;

SELECT CONCAT(author_fname, ' ', author_lname) AS author,
    SUM(pages) AS total_pages
FROM books
GROUP BY author_fname, author_lname;

SELECT released_year, AVG(pages)
FROM books
GROUP BY released_year;

SELECT CONCAT(author_fname, ' ', author_lname) AS author,
    AVG(pages)
FROM books
GROUP BY author_fname, author_lname;

SELECT title, released_year, pages
FROM books
WHERE released_year = 2001;

use test_db;

INSERT INTO dogs (name, breed) 
    VALUES ('bob', 'bomei'),
            ('robby', 'corgi'),
            ('Princess jane', 'retrievereeeeeeeeeeeee');
            