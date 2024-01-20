SELECT title FROM books
WHERE title REGEXP 'Harry Potter'
ORDER By id;

SELECT title FROM books
WHERE title LIKE '%Harry Potter%'
ORDER By id;