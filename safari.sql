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