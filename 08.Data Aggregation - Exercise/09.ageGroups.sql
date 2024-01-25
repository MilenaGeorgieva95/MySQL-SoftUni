SELECT 
CASE
WHEN age <11 THEN '[0-10]'
WHEN age <21 THEN '[11-20]'
WHEN age <31 THEN '[21-30]'
WHEN age <41 THEN '[31-40]'
WHEN age <51 THEN '[41-50]'
WHEN age <61 THEN '[51-60]'
ELSE '[61+]'
END AS age_group,
COUNT(*) as wizzard_count
FROM wizzard_deposits
GROUP BY age_group
ORDER BY wizzard_count;