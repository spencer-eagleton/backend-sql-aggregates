-- the average rental amount by country
-- include the country name and avg amount
-- use AVG to average the amount
SELECT country.country, AVG(amount)
FROM 
	country
INNER JOIN
	city
ON
	country.country_id = city.country_id
INNER JOIN
	address
ON 
	address.city_id = city.city_id
INNER JOIN
	customer
ON 
	customer.address_id = address.address_id
INNER JOIN
	rental
ON 
	rental.customer_id = customer.customer_id
INNER JOIN
	payment
ON
	payment.rental_id = rental.rental_id
GROUP BY
	country.country
ORDER BY avg DESC
LIMIT 10;