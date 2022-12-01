DROP assignments;
DROP animals;
DROP employees;
DROP enclosures;

CREATE TABLE assignments(
    id SERIAL PRIMARY KEY,
    employee_id INT REFERENCES employees,
    enclosures_id INT REFERENCES enclosures,
    day VARCHAR
);

CREATE TABLE animals(
    id SERIAL PRIMARY KEY,
    name VARCHAR,
    type VARCHAR,
    age INT,
    enclosures_id INT REFERENCES enclosures 
);

CREATE TABLE employees(
    id SERIAL PRIMARY KEY,
    name VARCHAR,
    employeeNumber INT
);

CREATE TABLE enclosures(
    id SERIAL PRIMARY KEY,
    name VARCHAR,
    capacity INT,
    closedForMaintenance VARCHAR
);

-- ASSIGNMENTS (entry into table)

INSERT INTO assignments(employee_id, enclosures_id, day) VALUES();
INSERT INTO assignments(employee_id, enclosures_id, day) VALUES();
INSERT INTO assignments(employee_id, enclosures_id, day) VALUES();
INSERT INTO assignments(employee_id, enclosures_id, day) VALUES();
INSERT INTO assignments(employee_id, enclosures_id, day) VALUES();

--  ANIMALS (entry into table)

INSERT INTO animals(name, type, age, enclosures_id) VALUES ('Ozzy','Ostrich', 20, );
INSERT INTO animals(name, type, age, enclosures_id) VALUES ('Leonardo','Turtle', 15, );
INSERT INTO animals(name, type, age, enclosures_id) VALUES ('Shuri','Panther', 25, );
INSERT INTO animals(name, type, age, enclosures_id) VALUES ('Melman','Giraffe', 20, );
INSERT INTO animals(name, type, age, enclosures_id) VALUES ('Scrat','Squirrel', 19, );
INSERT INTO animals(name, type, age, enclosures_id) VALUES ('Stuart','Mouse', 13, );
INSERT INTO animals(name, type, age, enclosures_id) VALUES ('Blu','Macaw', 27, );
INSERT INTO animals(name, type, age, enclosures_id) VALUES ('Simba','Lion', 13, );
INSERT INTO animals(name, type, age, enclosures_id) VALUES ('Ed','Hyena', 13, );

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

INSERT INTO enclosures(name, capacity, closedForMaintenance) VALUES('Aviary','50', False);
INSERT INTO enclosures(name, capacity, closedForMaintenance) VALUES('Amphibian House','50', False);
INSERT INTO enclosures(name, capacity, closedForMaintenance) VALUES('Predatory Animals','50', False);
INSERT INTO enclosures(name, capacity, closedForMaintenance) VALUES('Africa','50', False);
INSERT INTO enclosures(name, capacity, closedForMaintenance) VALUES('Rodents','50', False);
INSERT INTO enclosures(name, capacity, closedForMaintenance) VALUES('Rodents','50', False);