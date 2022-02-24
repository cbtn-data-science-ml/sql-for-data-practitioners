-- LECTURE

SELECT make, model 
FROM table
WHERE make = 'Tesla';


SELECT make 
FROM table
WHERE make = 'Tesla';


SELECT make, model 
FROM table
WHERE make = 'Tesla' AND make ='Model S';

-- CODE EXAMPLE

SELECT first_name 
FROM actor
WHERE first_name = 'Nick';