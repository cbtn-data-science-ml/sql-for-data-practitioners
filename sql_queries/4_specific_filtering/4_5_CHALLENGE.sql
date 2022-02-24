-- Return all rows from the payment table which contain .99 and 1.99 payments
SELECT *
FROM payment
WHERE amount
IN(.99, 1.99);


-- Return all rows from the payment table which DO NOT contain 1.99 and 5.99 payments
SELECT *
FROM payment
WHERE amount
NOT IN(2.99, 5.99);


-- Return the count of actor first names that start with the letter Z
SELECT COUNT(*)
FROM actor
WHERE first_name
LIKE 'Z%';


-- A customer wants to see a list of actors that don't have the last name Cage
SELECT first_name, last_name
FROM actor
WHERE last_name
NOT LIKE 'Cage';


-- How many NULL values are contained in first_name column of the customer table
SELECT COUNT(*)
FROM staff
WHERE first_name
IS NULL;
-- 0


-- Return film titles and descriptions containing the word 'Moose' in the description
SELECT title, description
FROM film
WHERE description
LIKE '%Moose%';


-- How many movies contain the word 'Moose' in the description
SELECT COUNT(*)
FROM film
WHERE description
LIKE '%Moose%';
--80