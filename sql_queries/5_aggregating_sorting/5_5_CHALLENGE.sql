-- What is the max amount from the payment table? Return the max amount aliased as max_amount
SELECT MAX(amount) AS max_amount
FROM payment;
-- 11.99

-- What is the average payment from the payment table? Return the average amount aliased as avg_payment
SELECT AVG(amount) AS avg_payment
FROM payment;


-- Return all columns from the payment table in descending order by staff_id and amount
SELECT *
FROM payment
ORDER BY staff_id, amount DESC;


-- What is the minimum payment amount for each staff member by staff_id
SELECT staff_id, MIN(amount)
FROM payment
GROUP BY staff_id;

-- What is the maximum payment amount for each staff member by staff_id
SELECT staff_id, MAX(amount)
FROM payment
GROUP BY staff_id;


-- Return the last 10 payment amounts from the payment table
SELECT amount
FROM payment
ORDER BY amount DESC
LIMIT 10;