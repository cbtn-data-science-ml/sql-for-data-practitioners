SELECT *
FROM payment
LIMIT 3;


SELECT *
FROM payment
ORDER BY payment_date DESC
LIMIT 3;


SELECT staff_id, amount
FROM payment
ORDER BY amount DESC
LIMIT 10;
