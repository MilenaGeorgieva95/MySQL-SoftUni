SELECT CONCAT('***', SUBSTRING(title, 4)) AS title FROM books
WHERE title LIKE 'The%'
ORDER BY id;