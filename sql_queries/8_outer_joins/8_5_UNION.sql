-- Return the address_id from the staff table
SELECT address_id
FROM staff;


-- Return store_id from the store table
SELECT store_id
FROM store;


-- Perform a UNION on address_id from the staff table amd store_id from the store table
SELECT address_id
FROM staff
UNION
SELECT store_id
FROM store;
