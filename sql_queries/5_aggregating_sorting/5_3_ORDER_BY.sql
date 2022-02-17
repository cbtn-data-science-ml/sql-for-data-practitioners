SELECT *
FROM payment
ORDER BY payment_date;

SELECT *
FROM payment
ORDER BY payment_date DESC;

SELECT *
FROM payment
ORDER BY payment_date ASC;


SELECT *
FROM payment
ORDER BY amount;


SELECT *
FROM payment
ORDER BY staff_id, amount;


SELECT *
FROM payment
ORDER BY staff_id, amount DESC;


SELECT staff_id, amount AS payment
FROM payment
ORDER BY staff_id, amount;

SELECT staff_id, MAX(amount)
FROM payment
GROUP BY staff_id;
