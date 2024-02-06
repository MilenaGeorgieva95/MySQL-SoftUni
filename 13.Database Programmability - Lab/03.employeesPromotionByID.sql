DELIMITER $$

CREATE PROCEDURE usp_raise_salary_by_id(id INT)  
BEGIN
     START TRANSACTION;
       IF((SELECT COUNT(*)
         FROM employees
         WHERE employee_id=id)=0) 
       THEN
        ROLLBACK;
       ELSE
        UPDATE employees AS e
        SET salary=salary*1.05
        WHERE employee_id=id;
      END IF;
END$$

DELIMITER ;
;

CALL usp_raise_salary_by_id(300);