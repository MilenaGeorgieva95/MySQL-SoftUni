SELECT c.country_code,
m.mountain_range,
p.peak_name,
p.elevation
FROM peaks AS p
JOIN mountains AS m ON p.mountain_id=m.id
JOIN mountains_countries AS mc ON m.id=mc.mountain_id
JOIN countries AS c ON mc.country_code=c.country_code AND c.country_name='Bulgaria'
WHERE p.elevation >2835
ORDER BY p.elevation DESC;