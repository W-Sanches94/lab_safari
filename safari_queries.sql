SELECT animals.name FROM animals inner join enclosures
on enclosures.id = animals.enclosures_id where enclosures_id =1;