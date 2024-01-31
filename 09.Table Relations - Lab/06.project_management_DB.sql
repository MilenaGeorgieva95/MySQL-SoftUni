CREATE SCHEMA project_management;
USE project_management;

CREATE TABLE clients(
id INT(11) PRIMARY KEY AUTO_INCREMENT,
client_name VARCHAR(100)
);

CREATE TABLE employees(
id INT PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(30),
last_name VARCHAR(30),
project_id INT(11)
);

CREATE TABLE projects(
id INT PRIMARY KEY AUTO_INCREMENT,
client_id INT(11),
project_lead_id INT(11),
CONSTRAINT fk_projects_clients
FOREIGN KEY (client_id)
REFERENCES clients(id),
CONSTRAINT fk_projects_employees
FOREIGN KEY (project_lead_id)
REFERENCES employees(id)
);

ALTER TABLE employees
ADD CONSTRAINT fk_employees_projects
FOREIGN KEY (project_id)
REFERENCES projects(id);