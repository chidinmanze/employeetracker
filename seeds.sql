-- Department Table Values 

INSERT INTO department (department_id, name)
VALUES (1, "Sales");

INSERT INTO department (department_id, name)
VALUES (2, "Marketing");

INSERT INTO department (department_id, name)
VALUES (3, "Product Development");

INSERT INTO department (department_id, name)
VALUES (4, "Accounting");

INSERT INTO department (department_id, name)
VALUES (5, "Human Resources");

INSERT INTO department (department_id, name)
VALUES (6, "IT");

INSERT INTO department (department_id, name)
VALUES (7, "Management"); 


-- Role Table Values

-- Sales
INSERT INTO role (role_id, title, salary, department_id)
VALUES (1,  "Sales Manager", 80000, 1);

INSERT INTO role (role_id, title, salary, department_id)
VALUES (2,  "Account Executive", 55000, 1);

INSERT INTO role (role_id, title, salary, department_id)
VALUES (3,  "Field Sales", 75000, 1);

INSERT INTO role (role_id, title, salary, department_id)
VALUES (4,  "Fulfillment Specialist", 45000, 1);


--  Marketing
INSERT INTO role (role_id, title, salary, department_id)
VALUES (5,  "Marketing Specialist", 45000, 2);

INSERT INTO role (role_id, title, salary, department_id)
VALUES (6,  "Marketing Manager", 55000, 2);

INSERT INTO role (role_id, title, salary, department_id)
VALUES (7,  "Visual Designer", 53000, 2);


-- Product Development
INSERT INTO role (role_id, title, salary, department_id)
VALUES (8, "Product Manager", 60000, 3);

INSERT INTO role (role_id, title, salary, department_id)
VALUES (9,  "Researcher", 75000, 3);

INSERT INTO role (role_id, title, salary, department_id)
VALUES (10,  "Product Developer", 70000, 3);

INSERT INTO role (role_id, title, salary, department_id)
VALUES (11,  "Business Analyst", 65000, 3);


-- Accounting
INSERT INTO role (role_id, title, salary, department_id)
VALUES (12,  "Controller", 80000, 4);

INSERT INTO role (role_id, title, salary, department_id)
VALUES (13,  "Accounting Specialist", 65000, 4);

INSERT INTO role (role_id, title, salary, department_id)
VALUES (14,  "Accounting Assistant", 42000, 4);


-- Human Resources
INSERT INTO role (role_id, title, salary, department_id)
VALUES (15,  "Human Resource Manager", 68000, 5);

INSERT INTO role (role_id, title, salary, department_id)
VALUES (16,  "Human Resource Specialist", 52000, 5);


-- IT
INSERT INTO role (role_id, title, salary, department_id)
VALUES (17,  "Full-Stack Developer", 83000, 6);

INSERT INTO role (role_id, title, salary, department_id)
VALUES (18,  "Project Manager", 64000, 6);

INSERT INTO role (role_id, title, salary, department_id)
VALUES (19,  "Database Analyst", 74000, 6);

INSERT INTO role (role_id, title, salary, department_id)
VALUES (20,  "Mobile Developer", 82000, 6);

INSERT INTO role (role_id, title, salary, department_id)
VALUES (21,  "Web Developer", 72000, 6);

INSERT INTO role (role_id, title, salary, department_id)
VALUES (22,  "UI/UX Designer", 70000, 6);

INSERT INTO role (role_id, title, salary, department_id)
VALUES (23,  "Software Engineer", 90000, 6);

-- Management
INSERT INTO role (role_id, title, salary, department_id)
VALUES (24,  "CEO", 300000, 7);

INSERT INTO role (role_id, title, salary, department_id)
VALUES (25,  "CFO", 120000, 7);

INSERT INTO role (role_id, title, salary, department_id)
VALUES (26,  "Managing Director", 110000, 7);


-- Employee Table Values
INSERT INTO employee (emp_id, first_name, last_name, role_id, manager_id)
VALUES (1, "Chinwe", "Madu", 1, 30);

INSERT INTO employee (emp_id, first_name, last_name, role_id, manager_id)
VALUES (2, "Alexia", "Razon", 2, 1);

INSERT INTO employee (emp_id, first_name, last_name, role_id, manager_id)
VALUES (3, "Jordan", "Grimes", 3, 1);

INSERT INTO employee (emp_id, first_name, last_name, role_id, manager_id)
VALUES (4, "William", "Yakubu", 3, 1);

INSERT INTO employee (emp_id, first_name, last_name, role_id, manager_id)
VALUES (5, "Larry", "Guy", 3, 1);

INSERT INTO employee (emp_id, first_name, last_name, role_id, manager_id)
VALUES (6, "Mary", "Johnson", 4, 1);

INSERT INTO employee (emp_id, first_name, last_name, role_id, manager_id)
VALUES (7, "Fred", "Nguyen", 5, 8);

INSERT INTO employee (emp_id, first_name, last_name, role_id, manager_id)
VALUES (8, "Ellory", "James", 6, 30);

INSERT INTO employee (emp_id, first_name, last_name, role_id, manager_id)
VALUES (9, "Naya", "Hortons", 7, 8);

INSERT INTO employee (emp_id, first_name, last_name, role_id, manager_id)
VALUES (10, "Franca", "Esperanza", 5, 8);

INSERT INTO employee (emp_id, first_name, last_name, role_id, manager_id)
VALUES (11, "Octavia", "Gubroson", 8, 30);

INSERT INTO employee (emp_id, first_name, last_name, role_id, manager_id)
VALUES (12, "George", "Ecklevee", 9, 11);

INSERT INTO employee (emp_id, first_name, last_name, role_id, manager_id)
VALUES (13, "Hanah", "Siyabona", 10, 11);

INSERT INTO employee (emp_id, first_name, last_name, role_id, manager_id)
VALUES (14, "Jamila", "Jones", 11, 11);

INSERT INTO employee (emp_id, first_name, last_name, role_id, manager_id)
VALUES (15, "Arinze", "Nwachukwu", 12, 30);

INSERT INTO employee (emp_id, first_name, last_name, role_id, manager_id)
VALUES (16, "Jim", "Smith", 13, 15);

INSERT INTO employee (emp_id, first_name, last_name, role_id, manager_id)
VALUES (17, "Ali", "Beydoun", 13, 15);

INSERT INTO employee (emp_id, first_name, last_name, role_id, manager_id)
VALUES (18, "Jennifer", "Ayo", 14, 15);

INSERT INTO employee (emp_id, first_name, last_name, role_id, manager_id)
VALUES (19, "Kim", "Critterdon", 15, 30);

INSERT INTO employee (emp_id, first_name, last_name, role_id, manager_id)
VALUES (20, "Sally", "Slinger", 16, 19);

INSERT INTO employee (emp_id, first_name, last_name, role_id, manager_id)
VALUES (21, "Chelsea", "Dobbina", 17, 22);

INSERT INTO employee (emp_id, first_name, last_name, role_id,  manager_id)
VALUES (22, "Mike", "Crewson", 18, 30);

INSERT INTO employee (emp_id, first_name, last_name, role_id, manager_id)
VALUES (23, "Yolanda", "Mbatu", 19, 22);

INSERT INTO employee (emp_id, first_name, last_name, role_id, manager_id)
VALUES (24, "Thomas", "Linson", 20, 22);

INSERT INTO employee (emp_id, first_name, last_name, role_id, manager_id)
VALUES (25, "Erica", "Akwabaa", 21, 22);

INSERT INTO employee (emp_id, first_name, last_name, role_id, manager_id)
VALUES (26, "Jerod", "Mquinde", 22, 22);

INSERT INTO employee (emp_id, first_name, last_name, role_id, manager_id)
VALUES (27, "Arnold", "Weatherly", 23, 22);

INSERT INTO employee (emp_id, first_name, last_name, role_id, manager_id)
VALUES (28, "Chidinma", "Nze", 24, NULL);

INSERT INTO employee (emp_id, first_name, last_name, role_id, manager_id)
VALUES (29, "Adaeze", "Ogbuaku", 25, 29);

INSERT INTO employee (emp_id, first_name, last_name, role_id, manager_id)
VALUES (30, "Ethan", "Stanley", 26, 29);