DROP TABLE assignments;
DROP TABLE animals;
DROP TABLE employees;
DROP TABLE enclosures;

CREATE TABLE enclosures(
    id SERIAL PRIMARY KEY,
    name VARCHAR,
    capacity INT,
    closedForMaintenance VARCHAR
);

CREATE TABLE employees(
    id SERIAL PRIMARY KEY,
    name VARCHAR,
    employeeNumber INT
);

CREATE TABLE animals(
    id SERIAL PRIMARY KEY,
    name VARCHAR,
    type VARCHAR,
    age INT,
    enclosures_id INT REFERENCES enclosures 
);

CREATE TABLE assignments(
    id SERIAL PRIMARY KEY,
    employee_id INT REFERENCES employees,
    enclosures_id INT REFERENCES enclosures,
    day VARCHAR
);

-- EMPLOYEES (entry into table)

INSERT INTO employees(name, employeeNumber) VALUES ('Berna', 12345);
INSERT INTO employees(name, employeeNumber) VALUES ('Wilson', 12346);
INSERT INTO employees(name, employeeNumber) VALUES ('Fatimah', 12347);
INSERT INTO employees(name, employeeNumber) VALUES ('Nadia', 12348);
INSERT INTO employees(name, employeeNumber) VALUES ('Anna', 12349);
INSERT INTO employees(name, employeeNumber) VALUES ('Zsolt', 12341);
INSERT INTO employees(name, employeeNumber) VALUES ('Ed', 12342);
INSERT INTO employees(name, employeeNumber) VALUES ('Richard', 12343);
INSERT INTO employees(name, employeeNumber) VALUES ('Colin', 12344);
INSERT INTO employees(name, employeeNumber) VALUES ('Rebecca',12350);

-- ENCLOSURES (entry into table)

INSERT INTO enclosures(name, capacity, closedForMaintenance) VALUES('Aviary','50', 'False');
INSERT INTO enclosures(name, capacity, closedForMaintenance) VALUES('Amphibian House','50', 'False');
INSERT INTO enclosures(name, capacity, closedForMaintenance) VALUES('Predatory Animals','50', 'False');
INSERT INTO enclosures(name, capacity, closedForMaintenance) VALUES('Open Air','50', 'False');
INSERT INTO enclosures(name, capacity, closedForMaintenance) VALUES('Rodents','50', 'False');
INSERT INTO enclosures(name, capacity, closedForMaintenance) VALUES('Rodents','50', 'False');

--  ANIMALS (entry into table)

INSERT INTO animals(name, type, age, enclosures_id) VALUES ('Ozzy','Ostrich', 20, 1);
INSERT INTO animals(name, type, age, enclosures_id) VALUES ('Leonardo','Turtle', 15, 2);
INSERT INTO animals(name, type, age, enclosures_id) VALUES ('Shuri','Panther', 25, 3);
INSERT INTO animals(name, type, age, enclosures_id) VALUES ('Melman','Giraffe', 20, 4);
INSERT INTO animals(name, type, age, enclosures_id) VALUES ('Scrat','Squirrel', 19, 5);
INSERT INTO animals(name, type, age, enclosures_id) VALUES ('Stuart','Mouse', 13, 5);
INSERT INTO animals(name, type, age, enclosures_id) VALUES ('Blu','Macaw', 27, 1);
INSERT INTO animals(name, type, age, enclosures_id) VALUES ('Simba','Lion', 13, 3);
INSERT INTO animals(name, type, age, enclosures_id) VALUES ('Ed','Hyena', 13, 3);

-- ASSIGNMENTS (entry into table)

INSERT INTO assignments(employee_id, enclosures_id, day) VALUES(1, 1, 'Monday');
INSERT INTO assignments(employee_id, enclosures_id, day) VALUES(2, 1, 'Monday');
INSERT INTO assignments(employee_id, enclosures_id, day) VALUES(3, 2, 'Tuesday');
INSERT INTO assignments(employee_id, enclosures_id, day) VALUES(4, 2, 'Tuesday');
INSERT INTO assignments(employee_id, enclosures_id, day) VALUES(5, 3, 'Wednesday');
INSERT INTO assignments(employee_id, enclosures_id, day) VALUES(6, 3, 'Wednesday');
INSERT INTO assignments(employee_id, enclosures_id, day) VALUES(7, 4, 'Thursday');
INSERT INTO assignments(employee_id, enclosures_id, day) VALUES(8, 4, 'Thursday');
INSERT INTO assignments(employee_id, enclosures_id, day) VALUES(9, 5, 'Friday');
INSERT INTO assignments(employee_id, enclosures_id, day) VALUES(10, 5, 'Friday');


