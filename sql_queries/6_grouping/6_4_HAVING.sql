-- Return the total number of films by rating
SELECT rating, COUNT(title)
FROM film
WHERE rating != 'R'
GROUP BY rating;
 
-- Return the total number of films by rating sorted in descending order
SELECT rating, COUNT(title)
FROM film
WHERE rating != 'R'
GROUP BY rating
ORDER BY count DESC;
 
-- Return the total number of films by rating greater than 200 sorted in descending order
SELECT rating, COUNT(title)
FROM film
WHERE rating != 'R'
GROUP BY rating
HAVING COUNT(title) > 200
ORDER BY count DESC;