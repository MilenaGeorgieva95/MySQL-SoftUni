SELECT town_id, name FROM towns
WHERE name REGEXP '^[^RBDrbd]'
ORDER BY name ASC;