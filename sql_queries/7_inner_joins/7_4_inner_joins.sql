-- Return film titles and language from the film and language table
-- Change name column to language makes more sense)
SELECT film.title, language.name AS language
FROM film
JOIN language
ON film.language_id = language.language_id;

-- Inner join payment and customer tables ON customer_id
SELECT *
FROM payment
JOIN customer
ON payment.customer_id = customer.customer_id; -- specify customer_id for each table

-- Return first and last names with amount of payments
SELECT first_name, last_name, amount
FROM payment
JOIN customer
ON payment.customer_id = customer.customer_id; 


-- Add customer id (must specify table)
SELECT customer.customer_id, first_name, last_name, amount -- specify customer_id table
FROM payment
JOIN customer
ON payment.customer_id = customer.customer_id; 

-- How about returning the customer first and last names
-- Grouped by first and last name and order by payment amount highest to lowest
FROM payment
JOIN customer
ON payment.customer_id = customer.customer_id
GROUP BY customer.first_name, customer.last_name
ORDER BY SUM(payment.amount) DESC;
