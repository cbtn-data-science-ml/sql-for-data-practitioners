-- UPDATE customer
-- SET email = null
-- WHERE customer_id = 254;

-- Checking for NULL and NOT NULL values
SELECT *
FROM customer
WHERE email
IS NULL;


SELECT *
FROM customer
WHERE email
IS NOT NULL;

--  With COUNT()
SELECT COUNT(*)
FROM customer
WHERE email
IS NULL;

SELECT COUNT(*)
FROM customer
WHERE email
IS NOT NULL;

