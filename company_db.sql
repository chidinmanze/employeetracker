DROP DATABASE IF EXISTS company_db;

CREATE DATABASE company_db;

USE company_db;

CREATE TABLE department (
     department_id INT NOT NULL,
     name VARCHAR(30),
     PRIMARY KEY (department_id)
);

CREATE TABLE role (
    role_id INT NOT NULL,
    title VARCHAR(30),
    salary DECIMAL,
    department_id INT NOT NULL,
    FOREIGN KEY (department_id) REFERENCES department(department_id),
    PRIMARY KEY (role_id)
);


CREATE TABLE employee (
  emp_id INT,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  role_id INT NOT NULL,
  manager_id INT,
  PRIMARY KEY (emp_id)
);

