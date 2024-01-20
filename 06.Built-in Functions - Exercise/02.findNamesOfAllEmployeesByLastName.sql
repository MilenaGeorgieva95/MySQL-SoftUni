SELECT first_name, last_name FROM employees
WHERE last_name REGEXP '[eEiI]+'
ORDER BY employee_id;

SELECT first_name, last_name FROM employees
WHERE last_name LIKE '%ei%'
ORDER BY employee_id;