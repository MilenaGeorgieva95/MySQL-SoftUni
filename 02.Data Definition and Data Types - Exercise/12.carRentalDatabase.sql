CREATE DATABASE car_rental;
USE car_rental;

CREATE TABLE categories
(
	id INT AUTO_INCREMENT PRIMARY KEY,
	category VARCHAR(50) NOT NULL,
	daily_rate INT(3),
	weekly_rate INT(3),
	monthly_rate INT(3),
	weekend_rate INT(3)
);
CREATE TABLE cars
(
	id INT AUTO_INCREMENT PRIMARY KEY,
	plate_number VARCHAR(50) NOT NULL,
	make VARCHAR(50),
    model VARCHAR(50),
	car_year INT(4),
	category_id INT,
       FOREIGN KEY (category_id)
       REFERENCES categories(id),
	doors INT(2),
	picture blob,
	car_condition VARCHAR(50),
	available BOOLEAN
);
CREATE TABLE employees
(
	id INT AUTO_INCREMENT PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	title VARCHAR(50),
	notes TEXT
);
CREATE TABLE customers
(
	id INT AUTO_INCREMENT PRIMARY KEY,
	driver_licence_number INT(11) NOT NULL,
	full_name VARCHAR(50),
	address VARCHAR(50),
	city VARCHAR(50),
	zip_code INT(5),
	notes TEXT
);
 
CREATE TABLE rental_orders 
(
	id INT AUTO_INCREMENT PRIMARY KEY,
	employee_id INT NOT NULL,
        FOREIGN KEY (employee_id)
        REFERENCES employees(id),
	customer_id INT,
        FOREIGN KEY (customer_id)
        REFERENCES customers(id),
	car_id INT NOT NULL,
        FOREIGN KEY (car_id)
        REFERENCES cars(id),
	car_condition VARCHAR(50),
	tank_level INT,
	kilometrage_start INT,
	kilometrage_end INT,
	total_kilometrage INT,
	start_date DATE,
	end_date DATE,
	total_days INT,
	rate_applied INT,
	tax_rate INT,
	order_status VARCHAR(50),
	notes TEXT
);

INSERT INTO cars(plate_number)
VALUES ('123'),('1234'),('12345');
INSERT INTO categories(category)
VALUES ('Classic'),('Limuzine'),('Sport');
INSERT INTO customers(driver_licence_number)
VALUES ('2232'),('232323'),('111');
INSERT INTO employees(first_name,last_name)
VALUES ('Ivan', 'Ivanov'),('Ivan1', 'Ivanov1'), ('Ivan2', 'Ivanov2');
INSERT INTO rental_orders(employee_id,car_id)
VALUES (1, 1),(1, 2), (2, 3);