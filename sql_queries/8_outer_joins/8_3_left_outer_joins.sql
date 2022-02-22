-- Check out the film table
SELECT *
FROM film;

-- Check out the inventory table
SELECT *
FROM inventory;

-- Return a left join of film and inventory on film_id
SELECT title, store_id
FROM film
LEFT OUTER JOIN inventory
ON inventory.film_id = film.film_id;

-- Return a left join of film and inventory on film_id where film_id is null
SELECT title, store_id
FROM film
LEFT OUTER JOIN inventory
ON inventory.film_id = film.film_id
WHERE inventory.film_id IS NULL;