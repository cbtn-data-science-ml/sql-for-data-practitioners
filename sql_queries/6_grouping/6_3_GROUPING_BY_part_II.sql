--  After FROM
SELECT rating, COUNT(title) AS title_count
FROM film
GROUP BY rating

-- After WHERE
SELECT rating, COUNT(title) AS title_count
FROM film
WHERE rating != 'R'
GROUP BY rating;

-- SELECT column not in GROUP BY because it's an aggregate function
-- Otherwise, SELECT columns must be in the GROUP BY expression!
SELECT COUNT(title) AS title_count
FROM film
GROUP BY rating;

-- Why is this returning an error?
-- No aggregate function and SELECT column is not in GROUP BY
SELECT amount 
FROM payment
GROUP BY staff_id;


-- More examples
-- Using AS aliasing
SELECT staff_id, SUM(amount) AS payment_total
FROM payment
GROUP BY staff_id

SELECT staff_id, AVG(amount) AS avg_amount 
FROM payment
GROUP BY staff_id;

-- SELECT columns is not in the GROUP BY and works because of the aggregate function
SELECT AVG(amount) AS avg_amount 
FROM payment
GROUP BY staff_id;

--  Using ORDER BY
SELECT AVG(amount) AS avg_amount 
FROM payment
GROUP BY staff_id
ORDER BY avg_amount;

-- Using the ROUND() function
SELECT staff_id, ROUND(AVG(amount), 2) AS avg_amount 
FROM payment
GROUP BY staff_id;

