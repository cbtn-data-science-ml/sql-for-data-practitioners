-- GROUP BY
-- Which customer in the payments table has the highest count of payments?
-- Sort by amount is descending order
SELECT customer_id, COUNT(amount)
FROM payment
GROUP BY customer_id
ORDER BY COUNT(amount) DESC;
 
 
-- Which customer in the payments table has the highest payment amount?
-- Sort by amount is descending order
SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
ORDER by SUM(amount) DESC;
 
-- Which film rating has the highest number of film titles?
-- Return the count of films by grouped rating in descending order
SELECT rating, COUNT(title) AS avg_amount
FROM film
GROUP BY rating
ORDER BY COUNT(title) DESC;
 
-- HAVING
-- Return total payments by customer_id greater than $200 order by payments in descending order
SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 200
ORDER BY sum DESC;