-- find all film titles rented out by customers with the first_name Roberta
-- Similar to exercise 5
SELECT
title
FROM 
inventory
LEFT JOIN
film
ON
inventory.film_id = film.film_id
RIGHT JOIN
rental
ON
inventory.inventory_id = rental.inventory_id
RIGHT JOIN
customer
ON
customer.customer_id = rental.customer_id
WHERE customer.first_name = 'Roberta'

