-- SUM of what? This is not clear
SELECT SUM(amount)
FROM payment;

-- Alias to give the column name more meaning
SELECT SUM(amount) AS total_payments
FROM payment;

-- How about the sum of payments by staff_id?
SELECT staff_id, SUM(amount) AS total_payments
FROM payment
GROUP BY staff_id;

-- This won't work because total_payments is created after HAVING
SELECT staff_id, SUM(amount) AS total_payments
FROM payment
GROUP BY staff_id
HAVING total_payments > 31000;

-- Try this instead
SELECT staff_id, SUM(amount) AS total_payments
FROM payment
GROUP BY staff_id
HAVING SUM(amount) > 31000;

-- Same with the WHERE clause
SELECT staff_id, amount AS payments
FROM payment
WHERE payments != 0;

-- Try this instead
SELECT staff_id, amount AS payments
FROM payment
WHERE amount != 0;