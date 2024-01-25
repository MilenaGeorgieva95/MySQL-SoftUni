SELECT 
name AS game,
CASE
  WHEN HOUR(start)<12 THEN 'Morning'
  WHEN HOUR(start)<18 THEN 'Afternoon'
  WHEN HOUR(start)<24 THEN 'Evening'
END AS `Part of the Day`,
CASE
  WHEN duration <=3 then 'Extra Short'
  WHEN duration <=6 then 'Short'
  WHEN duration <=10 then 'Long'
  ELSE 'Extra Long'
END AS `Duration`
FROM games;