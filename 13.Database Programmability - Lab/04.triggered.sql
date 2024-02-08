CREATE TABLE deleted_employees(
employee_id INT PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(50),
last_name VARCHAR(50),
middle_name VARCHAR(50),
job_title VARCHAR(50),
department_id INT,
salary DECIMAL(19,2)
);

DELIMITER $$

CREATE TRIGGER tr_after_delete_employees
AFTER DELETE
ON employees
FOR EACH ROW
BEGIN
     INSERT INTO deleted_employees(
         first_name, 
         last_name, 
         middle_name, 
         job_title, 
         department_id,
         salary)
     VALUES(
         OLD.first_name, 
         OLD.last_name, 
         OLD.middle_name, 
         OLD.job_title, 
         OLD.department_id,
         OLD.salary);
END$$

DELIMITER ;
;

DELETE FROM employees
WHERE employee_id=216;

SELECT * FROM deleted_employees;

DROP TRIGGER tr_after_delete_employees;

SELECT * FROM employees;