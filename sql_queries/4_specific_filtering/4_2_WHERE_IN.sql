--  From slides
SELECT first_name, last_name 
FROM actor
WHERE first_name
IN ('Dan');


SELECT first_name, last_name 
FROM actor
WHERE first_name
NOT IN ('Dan', 'Jenny', 'Val' );


-- Return foreign films hint: language_id = 1 are in english
SELECT title, description
FROM film
WHERE language_id
IN(1);