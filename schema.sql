DROP DATABASE IF EXISTS employee_tracker;
CREATE DATABASE employee_tracker;
USE employee_tracker;

CREATE TABLE departments (
id INTEGER AUTO_INCREMENT, 
name VARCHAR(30) NOT NULL,
PRIMARY KEY(id)
);

CREATE TABLE roles(
id INTEGER AUTO_INCREMENT,
title VARCHAR(30)NOT NULL,
salary DECIMAL(9,2) NOT NULL,
department_id INTEGER NOT NULL,
CONSTRAINT fk_department_id FOREIGN KEY (department_id) REFERENCES departments(id),
PRIMARY KEY(id)
);

CREATE TABLE employees(
id INTEGER NOT NULL,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL,
rold_id INTEGER
CONSTRAINT fk_role_id FOREIGN KEY (role_id) REFERENCES departments(id),
manager_id INTEGER
CONSTRAINT fk_manager_id FOREIGN KEY (manager_id) REFERENCES departments(id),
PRIMARY KEY(id)
);