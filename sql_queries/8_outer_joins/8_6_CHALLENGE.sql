-- Return a full outer join of inventory and film on film_id
-- How many copies of Ace Goldfinger at store_id 2? Three
SELECT inventory.film_id, store_id, film.title
FROM inventory
FULL OUTER JOIN film
ON inventory.film_id = film.film_id;

-- a more specific query to verify
SELECT COUNT(inventory.film_id), store_id, film.title
FROM inventory
FULL OUTER JOIN film
ON inventory.film_id = film.film_id
WHERE title = 'Ace Goldfinger'
GROUP BY title, store_id;



-- Return count of store_id per title
-- Perform a left join of the film and inventory tables on film_id
-- Group by titles that have a count of store_id greater than 7
-- Does the film title Rush Goodfellas have a count of 9? FALSE
SELECT title, COUNT(store_id)
FROM film
LEFT OUTER JOIN inventory
ON inventory.film_id = film.film_id
GROUP BY title
HAVING COUNT(store_id) > 7;

-- Perform a UNION on address_id from the staff table amd store_id from the store table
-- Which ids did you return? answer is 1,3,2,4
SELECT address_id
FROM staff
UNION
SELECT store_id
FROM store;