CREATE DATABASE movies;
USE movies;

CREATE TABLE directors (
    id INT PRIMARY KEY AUTO_INCREMENT,
    director_name VARCHAR(40) NOT NULL,
    notes TEXT
);

INSERT INTO directors (director_name) 
VALUES 
('Samantha Jayne, Arturo Perez Jr.'),
('David Ayer'),
('Emerald Fennell'),
('J. A. Bayona'),
('Yorgos Lanthimos');


CREATE TABLE genres (
    id INT PRIMARY KEY AUTO_INCREMENT,
    genre_name VARCHAR(40) NOT NULL,
    notes TEXT
);

INSERT INTO genres (genre_name, notes) 
VALUES 
('Comedy', 'note'),
('Thriller', 'note'),
('Romance', 'note'),
('Adventure', 'note'),
('Drama', 'note');

CREATE TABLE categories (
    id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(40) NOT NULL,
    notes TEXT
);

INSERT INTO categories (category_name) 
VALUES 
('TV Show'),
('Animation'),
('Popular'),
('Reality'),
('Kids');

CREATE TABLE movies (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title varchar(40) NOT NULL,
    director_id int,
    FOREIGN KEY (director_id)
    REFERENCES directors(id),
    copyright_year YEAR,
    length TIME,
    genre_id INT,
	FOREIGN KEY (genre_id)
    REFERENCES genres(id),
	category_id INT,
	FOREIGN KEY (category_id)
    REFERENCES categories(id),
    rating INT,
    notes TEXT
);

INSERT INTO movies 
(title, director_id, copyright_year, length, genre_id, category_id, rating, notes) 
VALUES 
('MEAN GIRLS',1,2024, '00:05:00', 1, 3, 7, 'notes'),
('THE BEEKEEPER',2,2024,'00:05:00',2,3,7.1,'notes'),
('SALTBURN',3,2023,'00:05:00',3,3,7.1,'notes'),
('SOCIETY OF THE SNOW',4,2023,'00:05:00',4,3,9,'notes'),
('POOR THINGS', 5, 2023, '00:05:00', 5, 3,9.3,'notes');