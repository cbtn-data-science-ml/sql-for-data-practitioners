SELECT *
FROM staff;


SELECT *
FROM staff
WHERE first_name = 'Mike';


SELECT *
FROM staff
WHERE first_name = 'Jon';


SELECT *
FROM payment;


SELECT *
FROM payment
WHERE staff_id = 1;


SELECT *
FROM payment
WHERE staff_id = 2;


SELECT *
FROM payment
WHERE staff_id = 2 AND amount > 5.99;


SELECT *
FROM payment
WHERE amount != 0.99;

SELECT *
FROM payment
WHERE amount = 1.99 
AND NOT amount > 0.99;


SELECT *
FROM payment
WHERE payment_date > '2007-04-30 00:00:00' AND amount > 5.99;


SELECT *
FROM payment
WHERE payment_date > '2007-04-15' AND amount > 5.99;


SELECT COUNT(*)
FROM payment
WHERE payment_date > '2007-04-15' AND amount > 5.99;
