SELECT first_name, last_name FROM employees
WHERE first_name REGEXP '^Sa'
ORDER BY employee_id;

SELECT first_name, last_name FROM employees
WHERE SUBSTRING(first_name,1,2)='Sa'
ORDER BY employee_id;