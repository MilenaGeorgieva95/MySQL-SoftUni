SELECT CONCAT_WS(' ',first_name,last_name) AS 'Full Name',
ABS(DATEDIFF(born, died)) AS 'Days Lived'
FROM authors;