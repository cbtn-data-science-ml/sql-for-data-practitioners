-- What is the first film title returned?
-- Return film titles and language from the film and language tables
-- Change name column to language (more semantic)
-- ORDER BY title
SELECT film.title, language.name AS language
FROM film
JOIN language
ON film.language_id = language.language_id
ORDER BY film.title;
-- Academy Dinosaur

-- What is the name of the first NC-17 film?
-- Return film title, rating, and language for all ratings except R rated films
-- Change name column to language makes more sense)
-- ORDER BY title
SELECT film.title, film.rating, language.name AS language
FROM film
JOIN language
ON film.language_id = language.language_id
WHERE film.rating != 'R'
ORDER BY film.tile;
-- Adaptation Holes


-- What is the name of the first R movie returned?
-- Return film title, rating, and language for all ratings except R rated films
-- Change name column to language makes more sense)
-- Add an alias for rating: non_r_ratings 
-- ORDER BY title in descending order
SELECT film.title, film.rating AS r_ratings, language.name AS language
FROM film
JOIN language
ON film.language_id = language.language_id
WHERE film.rating = 'R'
ORDER BY film.titles
-- Zoolander Fiction