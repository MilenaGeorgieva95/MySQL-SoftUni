CREATE TABLE people (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(200) NOT NULL,
    picture BLOB,
    height DOUBLE(3 , 2 ),
    weight DOUBLE(5 , 2 ),
    gender CHAR(1) NOT NULL,
    birthdate DATE NOT NULL,
    biography TEXT
);

INSERT INTO people(name, height, weight, gender, birthdate, biography)
VALUES 
('John Doe', 1.73, 85.7, 'm', '1994-05-21', 'The life of John Doe'),
('Alice Doe', 1.63, 55.7, 'f', '1964-05-24', 'The life of Alice Doe'),
('Ann Smith', 1.54, 49.7, 'f', '1971-03-21', 'The life of Ann Smith'),
('Ellie Bells', 2.10, 85.4, 'f', '2001-03-27', 'The life of Ellie Bells'),
('Adam Rogers', 1.98, 100.7, 'm', '1997-10-21', 'The life of Adam Rogers');