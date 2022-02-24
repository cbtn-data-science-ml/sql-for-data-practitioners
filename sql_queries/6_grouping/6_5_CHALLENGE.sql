-- GROUP BY
-- Which customer_id in the payments table has the highest count of payments?
-- Sort by amount in descending order
SELECT customer_id, COUNT(amount)
FROM payment
GROUP BY customer_id
ORDER BY COUNT(amount) DESC;
-- 148
 
-- Which customer_id in the payments table has the highest payment amount?
-- Sort by amount is descending order
SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
ORDER by SUM(amount) DESC;
-- 148
 
-- Which film rating has the highest number of film titles?
-- Return the count of films by grouped rating in descending order
SELECT rating, COUNT(title) AS film_count
FROM film
GROUP BY rating
ORDER BY COUNT(title) DESC;
--  PG-13


-- HAVING
-- Which customer_id has the highest payment amount over $200
-- Order by payments in descending order
SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 200
ORDER BY sum DESC;
-- 148