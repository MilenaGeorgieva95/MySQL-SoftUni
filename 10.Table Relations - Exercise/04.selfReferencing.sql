CREATE TABLE teachers(
teacher_id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(50),
manager_id INT,
CONSTRAINT fk_teachers_teacher_id_teachers_manager_id
FOREIGN KEY(manager_id)
REFERENCES teachers(teacher_id) 
)AUTO_INCREMENT=101;

INSERT INTO teachers(name)
VALUES
('John'),
('Maya'),
('Silvia'),
('Ted'),
('Mark'),
('Greta');

UPDATE teachers
SET manager_id=106
WHERE teacher_id IN (102, 103);

UPDATE teachers
SET manager_id=105
WHERE teacher_id=104;

UPDATE teachers
SET manager_id=101
WHERE teacher_id IN (105, 106);