SELECT COUNT(amount) 
FROM payment;

SELECT SUM(amount) 
FROM payment;


SELECT AVG(amount) 
FROM payment;


SELECT MIN(amount) 
FROM payment;


SELECT MAX(amount) 
FROM payment;

-- Aliasing
SELECT MAX(amount) AS max_amount
FROM payment;

SELECT (amount * 2) AS double_amount
FROM payment;