-- Return the max amount as max_amount from the payment table
SELECT MAX(amount) AS max_amount
FROM payment;


-- Return the average payment as payment_mean from the payment table
SELECT AVG(amount) 
FROM payment;


-- Return all columns from the payment table in descending order by staff_id and amount
SELECT *
FROM payment
ORDER BY staff_id, amount DESC;


-- Find the minimum payment amount for each staff member by staff_id
SELECT staff_id, MIN(amount)
FROM payment
GROUP BY staff_id;


-- Return the last 10 payment amounts from the payment table
SELECT amount
FROM payment
ORDER BY amount DESC
LIMIT 10;