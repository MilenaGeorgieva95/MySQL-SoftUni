CREATE TABLE mountains(
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(50)
);

CREATE TABLE peaks(
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(50),
mountain_id INT
);

ALTER TABLE peaks
ADD CONSTRAINT fk_peaks_mountains
FOREIGN KEY (mountain_id)
REFERENCES mountains(id)
ON DELETE CASCADE;

-- Test Values and Delete
INSERT INTO mountains(name) 
VALUES ('Rila'),
('Pirin'),
('Rodopi');

INSERT INTO peaks(name, mountain_id) 
VALUES ('Musala', 1),
('Vihren',2),('Banski Suhodol',2),
('Golyam Perelik',3);

DELETE FROM mountains
WHERE name='Pirin'AND id=2;