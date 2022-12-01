
-- The names of the animals in a given enclosure

SELECT animals.name FROM animals 
inner join enclosures
ON enclosures.id = animals.enclosures_id where enclosures_id =1;

--The names of the staff in a given enclosure

SELECT employees.name from employees
INNER JOIN assignments ON employees.id = assignments.employee_id
INNER JOIN enclosures ON enclosures.id = assignments.enclosures_id
WHERE enclosures_id =1;