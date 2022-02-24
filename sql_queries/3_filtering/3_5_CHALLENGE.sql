-- How many payment records for amounts larger than 5.99 AFTER APRIL 30TH, 2007
SELECT COUNT(*)
FROM payment
WHERE payment_date > '2007-04-30' AND amount > 5.99;

-- 249


-- How many payment records for amounts larger than 5.99 AFTER January 30TH, 2007
SELECT COUNT(*)
FROM payment
WHERE payment_date > '2007-01-30' AND amount > 5.99;

--  2423


-- How many payment records were made between January 16th through April 15th 2007?
SELECT COUNT(*)
FROM payment
WHERE payment_date
BETWEEN '2007-01-16' AND '2007-04-15';

-- 11114


-- How many payment records were made in total excluding February 1st through April 1st 2007?
SELECT COUNT(*)
FROM payment
WHERE payment_date
NOT BETWEEN '2007-02-01' AND '2007-04-01';

-- 6936