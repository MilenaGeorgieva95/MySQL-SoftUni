SELECT department_id, COUNT(id) AS 'Number of employees'
FROM employees
GROUP BY department_id;