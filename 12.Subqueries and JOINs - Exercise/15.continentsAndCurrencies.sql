SELECT c.continent_code, currency_code, COUNT(*) as currency_usage
FROM countries AS c
GROUP BY c.continent_code, c.currency_code
HAVING currency_usage>1
AND currency_usage = (SELECT COUNT(*) as count_of_currencies
                      FROM countries AS c2
                      WHERE c2.continent_code=c.continent_code
                      GROUP BY c2.currency_code
                      ORDER BY count_of_currencies DESC
                      LIMIT 1)
ORDER BY c.continent_code, c.currency_code;