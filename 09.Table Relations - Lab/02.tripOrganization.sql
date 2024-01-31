SELECT driver_id, vehicle_type, 
CONCAT(c.first_name, ' ', c.last_name)
FROM vehicles
JOIN campers AS c
ON driver_id=c.id;