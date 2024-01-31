SELECT 
starting_point AS route_starting_point,
end_point AS route_ending_point,
leader_id,
CONCAT(c.first_name, ' ', c.last_name)
FROM routes
JOIN campers AS c
ON leader_id=c.id;