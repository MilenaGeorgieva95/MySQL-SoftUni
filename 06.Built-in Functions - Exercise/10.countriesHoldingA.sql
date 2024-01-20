SELECT country_name, iso_code FROM countries
WHERE country_name REGEXP '[Aa]+.*[Aa]+.*[Aa]+.*'
ORDER BY iso_code;