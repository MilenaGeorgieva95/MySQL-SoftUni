SELECT first_name, last_name, hire_date FROM employees
ORDER BY DATE(hire_date) DESC
LIMIT 7;