SELECT department_id, 
IF(department_id=1,AVG(salary)+5000,AVG(salary)) AS avg_salary
FROM employees
WHERE salary>30000 AND manager_id !=42
GROUP BY department_id
ORDER By department_id;