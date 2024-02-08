DELIMITER $$

CREATE PROCEDURE usp_get_employees_by_salary_level(salary_level VARCHAR(10))
BEGIN
SELECT first_name, last_name
FROM employees
WHERE (CASE
    WHEN salary_level = 'Low' THEN salary < 30000
    WHEN salary_level = 'Average' THEN salary BETWEEN 30000 AND 50000 
    WHEN salary_level = 'High' THEN salary > 50000
END)
ORDER BY first_name DESC, last_name DESC;

END$$

DELIMITER ;
;