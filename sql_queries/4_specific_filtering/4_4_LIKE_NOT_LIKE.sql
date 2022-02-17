SELECT first_name, last_name
FROM actor
WHERE first_name
LIKE 'D%';


SELECT first_name, last_name
FROM actor
WHERE first_name
NOT LIKE 'D%';

SELECT first_name, last_name
FROM actor
WHERE first_name
LIKE 'D__';


SELECT first_name, last_name
FROM actor
WHERE first_name
NOT LIKE 'D_n';