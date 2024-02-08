DELIMITER $$

CREATE PROCEDURE usp_get_towns_starting_with(town_name VARCHAR(50))
BEGIN
SELECT name
FROM towns
WHERE name LIKE CONCAT(town_name,'%')
ORDER BY name;
END$$

DELIMITER ;
;

CALL usp_get_towns_starting_with('Sof');