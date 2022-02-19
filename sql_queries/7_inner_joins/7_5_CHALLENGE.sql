-- Return film titles and language from the film and language table
-- Change name column to language makes more sense)
SELECT film.title, language.name AS language
FROM film
JOIN language
ON film.language_id = language.language_id


-- Return film title, rating, and language for all ratings except R rated films
-- Change name column to language makes more sense)
SELECT film.title, film.rating, language.name AS language
FROM film
JOIN language
ON film.language_id = language.language_id
WHERE film.rating != 'R';


-- Return film title, rating, and language for all ratings except R rated films
-- Change name column to language makes more sense)
-- Add an alias for rating: non_r_ratings 
SELECT film.title, film.rating AS non_r_ratings, language.name AS language
FROM film
JOIN language
ON film.language_id = language.language_id
WHERE film.rating != 'R';