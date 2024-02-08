DELIMITER $$

CREATE PROCEDURE usp_get_employees_from_town(town_name VARCHAR(50))
BEGIN
SELECT e.first_name, e.last_name
FROM towns AS t
JOIN addresses as a ON a.town_id=t.town_id
JOIN employees as e ON e.address_id=a.address_id
WHERE t.name=town_name
ORDER BY e.first_name, e.last_name, e.employee_id;
END$$

DELIMITER ;
;

CALL usp_get_employees_from_town('Sofia');