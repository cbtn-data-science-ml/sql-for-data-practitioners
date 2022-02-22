-- Return a full outer join of customer and address on address_id
SELECT *
FROM customer
FULL OUTER JOIN address
ON customer.address_id = address.address_id;

-- Use the WHERE clause to find null values in either customer or address tables
-- We don't want an address without the first and last name associated with the customer_id
SELECT *
FROM customer
FULL OUTER JOIN address
ON customer.address_id = address.address_id
WHERE customer.customer_id IS NULL
OR address.address IS NULL;