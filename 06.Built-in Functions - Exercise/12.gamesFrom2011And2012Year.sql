SELECT name, DATE_FORMAT(start, '%Y-%m-%d') start FROM games
WHERE YEAR(start) in (2011,2012)
ORDER BY start ASC
LIMIT 50;