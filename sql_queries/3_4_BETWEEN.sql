-- BETWEEN
SELECT * 
FROM payment
WHERE amount >= 1.99 
AND amount <= 2.99;


SELECT * 
FROM payment
WHERE amount
BETWEEN 1.99 AND 2.99;


-- NOT BETWEEN
SELECT * 
FROM payment
WHERE amount < 1.99 
OR amount > 2.99;


SELECT * 
FROM payment
WHERE amount
NOT BETWEEN 1.99 AND 2.99;


-- BY DATES
SELECT * 
FROM payment
WHERE payment_date
BETWEEN '2007-02-16' AND '2007-04-16';

SELECT COUNT(*) 
FROM payment
WHERE payment_date
BETWEEN '2007-02-16' AND '2007-04-16';

SELECT * 
FROM payment
WHERE payment_date
NOT BETWEEN '2007-02-16' AND '2007-04-16';

SELECT COUNT(*)
FROM payment
WHERE payment_date
NOT BETWEEN '2007-02-16' AND '2007-04-16';